// Crée (de façon idempotente) les issues du backlog décrites dans .github/backlog/ : étiquettes, jalons, issues, puis épopées.
// Usage (CI) : node .github/backlog/create-backlog.mjs [--dry-run] [--only=CODE1,CODE2] [--limit=N] [--delay=ms]
import { execFileSync } from 'node:child_process';
import fs from 'node:fs';
import path from 'node:path';

const args = Object.fromEntries(process.argv.slice(2).map((a) => { const [k, v] = a.replace(/^--/, '').split('='); return [k, v ?? true]; }));
const DRY = !!args['dry-run'];
const LIMIT = Number(args.limit || 100000);
const DELAY = Number(args.delay || 7000);
const ONLY = args.only ? new Set(String(args.only).split(',')) : null;
const dir = path.join('.github', 'backlog');
const index = JSON.parse(fs.readFileSync(path.join(dir, 'index.json'), 'utf8'));
const sleep = (ms) => new Promise((r) => setTimeout(r, ms));

const gh = (a, input) => {
  for (let attempt = 1; attempt <= 6; attempt++) {
    try {
      return execFileSync('gh', a, { encoding: 'utf8', input, stdio: ['pipe', 'pipe', 'pipe'], maxBuffer: 64 * 1024 * 1024 });
    } catch (e) {
      const msg = `${e.stderr || ''}${e.message}`;
      if (/rate limit|abuse|secondary|HTTP 403|HTTP 429|502|503/i.test(msg) && attempt < 6) {
        const wait = 60_000 * attempt;
        console.log(`⏳ limite atteinte (tentative ${attempt}), pause ${wait / 1000}s`);
        Atomics.wait(new Int32Array(new SharedArrayBuffer(4)), 0, 0, wait);
        continue;
      }
      throw new Error(msg);
    }
  }
};

const COLORS = [[/^phase:/, '1D76DB'], [/^priorite:P0/, 'B60205'], [/^priorite:P1/, 'D93F0B'], [/^priorite:P2/, 'FBCA04'], [/^taille:/, 'C5DEF5'], [/^type:/, '5319E7'], [/^module:/, '0E8A16'], [/^epic$/, '3E4B9E']];
const colorOf = (n) => (COLORS.find(([re]) => re.test(n)) || [0, 'ededed'])[1];

// 1. Étiquettes
const wanted = new Set([...index.epics.flatMap((e) => e.labels), ...index.issues.flatMap((i) => i.labels)]);
const existingLabels = new Set(JSON.parse(gh(['label', 'list', '--limit', '500', '--json', 'name'])).map((l) => l.name));
for (const l of wanted) {
  if (existingLabels.has(l)) continue;
  console.log(`🏷️  étiquette ${l}`);
  if (!DRY) gh(['label', 'create', l, '--color', colorOf(l), '--description', `Backlog — ${l}`]);
}

// 2. Jalons
const repo = process.env.GITHUB_REPOSITORY;
const milestones = JSON.parse(gh(['api', `repos/${repo}/milestones?state=all&per_page=100`]));
for (const m of index.milestones) {
  if (milestones.some((x) => x.title === m.title)) continue;
  console.log(`🏁 jalon ${m.title}`);
  if (!DRY) gh(['api', `repos/${repo}/milestones`, '-f', `title=${m.title}`, '-f', `description=${m.description}`]);
}

// 3. Issues existantes (code -> numéro)
const codeOf = (t) => (t.match(/^\[([A-Z0-9-]+)\]/) || [])[1];
const known = new Map();
const loadKnown = () => {
  known.clear();
  for (const i of JSON.parse(gh(['issue', 'list', '--state', 'all', '--limit', '3000', '--json', 'number,title']))) {
    const c = codeOf(i.title); if (c) known.set(c, i.number);
  }
};
loadKnown();
console.log(`ℹ️  ${known.size} issues déjà présentes`);

// 4. Issues enfants
let created = 0;
for (const it of index.issues) {
  if (known.has(it.code) || (ONLY && !ONLY.has(it.code))) continue;
  if (created >= LIMIT) { console.log('⏹️  limite atteinte'); break; }
  const bodyFile = path.join(dir, 'issues', `${it.code}.md`);
  console.log(`➕ ${it.title}`);
  if (!DRY) {
    const out = gh(['issue', 'create', '--title', it.title, '--body-file', bodyFile, '--label', it.labels.join(','), '--milestone', it.milestone]);
    const n = Number(out.trim().split('/').pop());
    known.set(it.code, n);
    await sleep(DELAY);
  }
  created++;
}

// 5. Épopées (checklist des enfants)
for (const ep of index.epics) {
  if (ONLY && !ONLY.has(ep.code)) continue;
  const lines = ep.children.map((c) => {
    const child = index.issues.find((i) => i.code === c);
    const n = known.get(c);
    return n ? `- [ ] #${n} ${child.title.replace(/^\[[^\]]+\]\s*/, '')} \`${c}\`` : `- [ ] \`${c}\` ${child.title}`;
  });
  const body = fs.readFileSync(path.join(dir, 'issues', `${ep.code}.md`), 'utf8').replace('{{CHILDREN}}', lines.join('\n'));
  const tmp = path.join(dir, `.epic-${ep.code}.md`); fs.writeFileSync(tmp, body);
  if (known.has(ep.code)) {
    console.log(`✏️  mise à jour épopée ${ep.code}`);
    if (!DRY) { gh(['issue', 'edit', String(known.get(ep.code)), '--body-file', tmp]); await sleep(2000); }
  } else {
    console.log(`➕ ${ep.title}`);
    if (!DRY) { const out = gh(['issue', 'create', '--title', ep.title, '--body-file', tmp, '--label', ep.labels.join(','), '--milestone', ep.milestone]); known.set(ep.code, Number(out.trim().split('/').pop())); await sleep(DELAY); }
  }
  fs.rmSync(tmp, { force: true });
}
fs.writeFileSync(path.join(dir, 'map.json'), JSON.stringify(Object.fromEntries(known), null, 1));
console.log(`✅ terminé : ${created} issues créées, ${known.size} au total`);
