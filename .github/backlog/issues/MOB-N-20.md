> **MOB-N-20** · Écran · Priorité **P0** · Taille **M** · Phase 1 — MVP

## 🎯 Contexte

N-14 : « Tu as atteint ta limite quotidienne de 40 messages. 🙏 », « Retour dans 04:12:30 », « Le quota se renouvelle chaque jour pour garder le service gratuit. », champ désactivé « Limite quotidienne atteinte ». Les maquettes indiquent 40 messages/jour, le CDC Backend §10.2 indique 30 (configurable via ASSISTANT_DAILY_QUOTA) : l'app lit la valeur de l'API.

## ✅ Objectif

Expliquer la limite sans bloquer la lecture de l'historique et rouvrir le chat à l'heure exacte.

## 🖼️ Maquettes de référence

Toutes les captures ci-dessous sont les maquettes validées (clair / sombre, mobile / tablette ou bureau). Le comportement visuel, les espacements, états et libellés doivent être reproduits à l'identique ; les tokens du design system s'appliquent (aucune couleur en dur).

#### `N-14` — Quota de messages atteint
_Module : Assistant IA Barça AI_

<table><tr><th align='center'>Mobile · Clair</th><th align='center'>Mobile · Sombre</th><th align='center'>Tablette · Clair</th><th align='center'>Tablette · Sombre</th></tr><tr><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__phone_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__phone_light.webp?raw=true' width='230' alt='N-14 Mobile Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__phone_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__phone_dark.webp?raw=true' width='230' alt='N-14 Mobile Sombre'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__tablet_light.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__tablet_light.webp?raw=true' width='330' alt='N-14 Tablette Clair'></a></td><td align='center'><a href='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__tablet_dark.webp?raw=true'><img src='https://github.com/TheGoatIA/univers_barca_mobile/blob/main/docs/maquettes/ecrans/N/N-14_quota-de-messages-atteint__tablet_dark.webp?raw=true' width='330' alt='N-14 Tablette Sombre'></a></td></tr></table>

<details><summary>Éléments relevés dans la maquette</summary>

**Textes visibles** : « Barça AI » · « En ligne · FR / EN / ES » · « Tu as atteint ta limite quotidienne de 40 messages. 🙏 » · « Retour dans » · « 04:12:30 » · « Le quota se renouvelle chaque jour pour garder le service gratuit. » · « Limite quotidienne atteinte » · « Barça AI peut se tromper. Vérifie les infos importantes. »

**Composants repérés** : `avatar`, `card`, `sheet`

</details>

**Issues liées sur ce même écran :** [API-IA-03](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-03%5D%22) · [API-IA-17](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-17%5D%22) · [API-IA-19](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-19%5D%22) · [API-IA-20](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-20%5D%22) · [API-IA-21](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-21%5D%22) · [API-IA-32](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-32%5D%22) · [API-IA-33](https://github.com/TheGoatIA/univers_barca_api/issues?q=is%3Aissue%20%22%5BAPI-IA-33%5D%22) · [MOB-N-02](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-02%5D%22) · [MOB-N-05](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-05%5D%22) · [MOB-N-08](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-08%5D%22) · [MOB-N-25](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-25%5D%22) · [MOB-N-28](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-28%5D%22) · [MOB-N-30](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-30%5D%22) · [MOB-N-31](https://github.com/TheGoatIA/univers_barca_mobile/issues?q=is%3Aissue%20%22%5BMOB-N-31%5D%22)

## 📐 Règles de gestion

- Valeur « 40 » issue de `quota.limit` (jamais en dur)
- Compte à rebours `CountdownText` (composant partagé avec M-12) jusqu'à `resetsAt`
- À l'échéance, le composer se réactive sans rouvrir l'écran
- Déclenché par 429 ou par `quota.remaining==0` à la réception d'une réponse
- Les anciens messages restent lisibles ; les suggestions sont masquées

## 🔄 Comportement et états

- Aucun CTA de contournement
- Hors-ligne : le décompte continue (horloge corrigée par l'offset serveur)

## 🔌 Contrats d'API

| Méthode | Chemin | Description | Requête | Réponse |
| --- | --- | --- | --- | --- |
| `POST` | `/api/v1/assistant/conversations/:id/messages` | Envoie un message ; avec `Accept: text/event-stream` la réponse est diffusée en SSE (événements meta, token, block, actions, sources, done, error), sinon JSON complet | {"content":"string 1..500","clientMessageId":"uuid"} | 200 {"success":true,"data":{"userMessage":{...},"assistantMessage":{"id":"...","content":"...","lang":"fr","status":"ok\|out_of_scope\|moderated\|no_data","blocks":[],"actions":[],"sources":[],"suggestions":[]},"quota":{"limit":40,"remaining":12,"resetsAt":"ISO"}}} |

## 🛠️ Tâches

- [ ] Créer `widgets/quota_reached_notice.dart`
- [ ] Réutiliser `core/widgets/countdown_text.dart`
- [ ] Gérer `ChatQuotaExceeded` et le Timer de déblocage
- [ ] Stocker `resetsAt` (SharedPreferences) pour restaurer l'état au redémarrage
- [ ] Clés ARB `assistantQuotaTitle` ({limit}), `assistantQuotaReturn`, `assistantQuotaFootnote`, `assistantQuotaInput`
- [ ] Tests widget (`fakeAsync`)
- [ ] Golden N-14
- [ ] Analytics `assistant_quota_reached`

## ✔️ Critères d'acceptation

- [ ] Étant donné limit=40 quand N-14 s'affiche alors « limite quotidienne de 40 messages » est lu depuis l'API
- [ ] Étant donné resetsAt dans 4 h 12 min 30 s alors le compte à rebours décroît chaque seconde
- [ ] Étant donné l'échéance alors le composer redevient actif automatiquement
- [ ] Étant donné le redémarrage de l'app avant l'échéance alors l'état verrouillé est restauré

## 🧪 Tests à écrire

- [ ] quota_notice_test
- [ ] chat_bloc_test : déblocage à l'échéance
- [ ] countdown_text_test
- [ ] golden : quota_light / dark

## ♿ Accessibilité et i18n

- Décompte annoncé par minutes ; texte du champ désactivé lu

## 🔗 Dépendances

À réaliser après : `MOB-N-05` · `MOB-N-08` (rechercher le code entre crochets dans le titre des issues).

## 📚 Références

- CDC Backend §10.2, §13.1
- CDC Global §2.2

## 📦 Définition de terminé

`dart format` + `flutter analyze` sans avertissement ; tests unitaires/widget verts (couverture non régressive) ; textes dans les ARB FR/EN/ES ; rendu vérifié en clair/sombre, mobile/tablette ; PR vers `dev` avec captures ; CI verte.
