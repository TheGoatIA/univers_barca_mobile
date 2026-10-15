> **MOB-Q-27** · Écran · Priorité **P1** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

Q-18 « Aide et support » : recherche « Rechercher dans l'aide », articles (Comment fonctionne le streak ? ; Ajouter le calendrier à mon agenda ; Ma position est-elle visible ? ; Les limites de Barça AI), « Contacter le support — Réponse sous 48 h » et « Signaler un bug — Joint automatiquement l'identifiant d'incident ».

## ✅ Objectif

Implémenter l'écran d'aide avec FAQ locale consultable hors-ligne et deux canaux de contact.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `Q-18` — Aide et support
_Module : Paramètres et compte_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-18_aide-et-support__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-18_aide-et-support__phone_light.webp?raw=true' width='230' alt='Q-18 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-18_aide-et-support__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-18_aide-et-support__phone_dark.webp?raw=true' width='230' alt='Q-18 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-18_aide-et-support__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-18_aide-et-support__tablet_light.webp?raw=true' width='330' alt='Q-18 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-18_aide-et-support__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/Q/Q-18_aide-et-support__tablet_dark.webp?raw=true' width='330' alt='Q-18 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Aide et support » · « Rechercher dans l’aide » · « Comment fonctionne le streak ? » · « Ajouter le calendrier à mon agenda » · « Ma position est-elle visible ? » · « Les limites de Barça AI » · « Contacter le support » · « Réponse sous 48 h » · « Signaler un bug » · « Joint automatiquement l'identifiant d'incident »

**Composants repérés** : `card`, `search`

</details>

**Issues liées sur ce même écran :** [MOB-Q-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-30%5D%22) · [MOB-Q-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-Q-31%5D%22)

## 📐 Règles de gestion

- FAQ : contenu embarqué par langue (assets JSON `assets/help/faq_{fr,en,es}.json`) ou fourni par l'API (à confirmer) ; recherche locale insensible aux accents.
- « Contacter le support » ouvre un e-mail pré-rempli (`mailto:`) avec version, plateforme, langue ; engagement de réponse affiché « Réponse sous 48 h ».
- « Signaler un bug » joint le dernier `traceId` d'erreur (format `{success:false,error:{traceId}}`) et la version/plateforme, sans donnée personnelle.

## 🛠️ Tâches

- [ ] Créer `help_support_page.dart` (`SearchBar` + liste d'articles + 2 cartes d'action).
- [ ] Créer `HelpArticle` / `HelpRepository` (JSON assets) et `HelpArticlePage` (Markdown simple).
- [ ] Implémenter la recherche locale (`normalize` + score titre/corps).
- [ ] Créer `IncidentIdStore` mémorisant les 10 derniers `traceId` (en mémoire + Drift, purgés à la déconnexion).
- [ ] Générer l'e-mail avec `url_launcher` (`mailto:support@…` configurable par flavor).
- [ ] Gérer l'absence de client mail (copie de l'adresse).
- [ ] Golden test clair/sombre.
- [ ] Tests unitaires/widget.

## ✔️ Critères d'acceptation

- [ ] Étant donné « streak », quand il est saisi dans la recherche, alors « Comment fonctionne le streak ? » est listé.
- [ ] Étant donné « Signaler un bug », quand il est touché après une erreur réseau, alors le `traceId` figure dans le corps du message.
- [ ] Étant donné le hors-ligne, quand Q-18 s'affiche, alors la FAQ reste consultable.
- [ ] Étant donné aucun client mail, quand « Contacter le support » est touché, alors l'adresse est copiée avec un toast.

## 🧪 Tests à écrire

- [ ] Test unitaire : recherche sans accents.
- [ ] Test : corps du mail avec `traceId`.
- [ ] Widget test : FAQ hors-ligne.
- [ ] Widget test : repli sans client mail.
- [ ] Golden test : Q-18.

## ♿ Accessibilité et i18n

- Clés ARB : `helpTitle`, `searchHelp`, `contactSupport`, `answerWithin48h`, `reportBug`, `reportBugSub`, `noHelpResults`.
- Les articles de FAQ sont fournis dans les 3 langues.

## 🔗 Dépendances

À réaliser après : `MOB-Q-06` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Flutter §12.3 (observabilité)
- CDC Backend §11.6 (codes d'erreur)

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
