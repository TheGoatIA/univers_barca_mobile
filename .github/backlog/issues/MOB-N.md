> **MOB-N** · Épopée · Phase 1 — MVP

## 🎯 Objectif

Offrir au supporter un compagnon conversationnel (Barça AI) accessible depuis une bulle flottante sur tous les écrans principaux, qui répond en FR/EN/ES à partir des données internes du produit (RAG), reste cantonné à l'univers du FC Barcelone, déclenche des actions dans l'app et conserve l'historique des conversations entre appareils.

## 📦 Périmètre

- Bulle flottante (AssistantFab) et bottom sheet de chat transversal dans le MainShell
- Envoi de messages, réponse en streaming (machine à écrire), réponses sourcées, actions, carte joueur, langue détectée
- États de garde-fous : hors périmètre, modération, information introuvable, erreur d'envoi, hors-ligne, quota quotidien
- Historique persistant des conversations (liste, recherche, reprise) synchronisé via l'API
- Couche données (modèles, Chopper, client SSE, Drift), BLoC, sécurité du rendu, analytics, accessibilité, tests

## 🚫 Hors périmètre

- Orchestration RAG, prompt système, modération entrée/sortie, quota serveur (dépôt API, CDC Backend §3.8, §11.5)
- Écrans cibles des actions (quiz, fiche joueur, comparateur GOAT, wallpapers, calendrier) : issues de leurs groupes respectifs
- Édition/suppression d'une conversation, entrée vocale (absentes des CDC et maquettes ; la suppression de compte efface déjà les conversations)
- Back-office de configuration du quota et du prompt (dépôt admin)

## 📚 Références

- CDC Global §2.2
- CDC Global §8.5 (principes du prompt système)
- CDC Global §11.1-11.2
- CDC Flutter §5.1 (assistant hors-ligne), §7.10
- CDC Backend §3.8, §4.6, §5.3, §10.2, §11.2, §11.5

## 🧩 Issues de l'épopée (31)

{{CHILDREN}}
