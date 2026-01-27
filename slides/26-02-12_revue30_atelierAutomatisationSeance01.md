---
title: "Atelier 1 : Connaître et évaluer les systèmes d'automatisation complexes pour les revues"
abstract: Introduction aux architectures de systèmes complexes intégrant de l'IA
author: 
    - name: Alexia Schneider 
      orcid: 0009-0000-0651-9792
      email: alexia.schneider@umontreal.ca
date: 2026-02-12
bibliography: ../phd_udem.bib
link-citations: true
colorlinks: true
fig-cap-location: bottom
format:
    revealjs: 
        # template: simple
        smaller: true
        # incremental: true
        scrollable: true
        slide-number: true
logo: "img/stickerAvecTexte.png"
---
## Présentation

Présentation : 30 min 
Discussion :  45min

Lieu: à distance https://bbb.futuretic.fr/rooms/up9-kkg-eld-jjl/join
Jour et heure : Jeudi : 9h-10h15 (Montréal) / 15h-16h15 (Paris)
Un atelier par mois de février à mai. Suivre la newsletter pour le détail du calendrier.

Introduction générale de la série: 
Intitulée "Connaître et évaluer les systèmes d'automatisation complexes pour les revues", cette nouvelle série d'atelier-discussion est une réponse aux inquiétudes et besoins soulevées lors de la série d'ateliers qui a eu lieu à l'hiver 2025. Nous souhaitons offrir aux équipes des revues partenaires du projet l'opportunité de comprendre plus en profondeur les systèmes d'IA et de s'outiller concrètement à l'évaluation qualitative (et quantitative) des outils et algorithmes qui bouleversent vos pratiques professionnelles. Chaque séance repose sur une présentation de 30min autour d'un thème illustré par des cas concernant directement la place des revues (ex: comprendre les architectures d'IA complexes comme le RAG et les IA agentiques, évaluer la production automatique d'abstracts, comprendre les mythes autour de l'IA). 

Calendrier: 
12 février : Introduction aux architectures de systèmes complexes intégrant de l'"IA" - Alexia Schneider

Présentation de cet atelier: 

Cette première séance est une introduction théorique aux systèmes actuels intégrant des LLMs dans leur fonctionnement : la plupart des outils, du plus généraliste chatbot aux outils spécialisés de recherche d'information ou de correction de texte, mettent en oeuvre un traitement complexe de la demande de l'utilisateurice. Afin de cerner les enjeux de cette automatisation et comprendre où se joue l'évaluation de ces systèmes pour leurs utilisateurices, je présenterai deux des architectures dites "complexes" de systèmes intégrant des grands modèles de langue, à savoir les IA agentiques et le RAG.  

# Des systèmes d'IA complexes

## Quelle complexité ?

IA, dite générative ou d'automatisation de la prédiction de token, effectue aujourd'hui des tâches complexes à deux niveaux: 

- interprétation d'une instruction donnée en langue naturelle (avec son lot d'ambiguïté).
- **intégration** de LLM dans des process ou pipelines qui impliquent des interactions en chaînes: 

    - Systèmes agentiques "_agentic AI_"
    - RAG

## Exemple de système d'IA complexe: les agents

Un agent est une série d'appels à un LLM : l'agent est ce qui permet d'enchaîner _input_ et _output_ jusqu'à complétion d'une tâche. Le résultat de ces interactions peut ne pas être une réponse en langue naturelle ex: activation d'une fonction. 

Autrement dit, **un agent est une "IA" qui se répond à elle-même.** 

On parlera de système agentique quand plusieurs agents interagissent.

Démonstration d'un agent : assistant à l'exploration et la création de note sur un tableau interactif de @arawjoIanarawjoSplat2026

<!-- idée: - performativité du langage : la réponse du modèle devient action (tool call) -->


## Définition hypée des IA agentiques

![Description des IA agentiques par Docker [@irwinGenAIVsAgentic2025]](img/genai_v_agenticai.png)

## Description pas hypée de l'agent conversationnel de la démo

![](img/AgentIA.png)

## Applications de chat actuelles


Depuis GPT-3.5 et sa sortie publique en décembre 2022, l'application ChatGPT ne se contente pas d'envoyer seul le prompt de l'utilisateur pour interroger le LLM: dans le prompt global, on trouve un ensemble d'instructions préliminaires (le _system prompt_) et d'informations complémentaires comme l'historique des échanges (_chat history_). 

Depuis décembre 2024, le Model Context Protocol (MCP) permet l'intégration modulaire de l'interface de chat à d'autres fonctionalités. 

![Le MCP[^mcp]](img/mcp.png)

Exemple : la fonction _search_ => **RAG**

[^mcp]: source: https://modelcontextprotocol.io/docs/getting-started/intro


# Recherche d'information et synthèse des sources

## Retrieval Augmented Generation

Limites du LLM: 

- représentation figée sur les données d'entraînement (= mémoire implicite ne peut pas être mise à jour)
- fenêtre contextuelle limitée (ajd jusque 120 000 tokens, en réalité déclin après ~30 000 tokens) 

-> perte de fiabilité

Le RAG : architecture de système d'IA qui repose sur une base de connaissance externe dans le but d'améliorer les réponses d'une IA générative sans demander d'entrainement supplémentaire (_fine tuning_).[@lewisRetrievalAugmentedGenerationKnowledgeIntensive2021] (Facebook, University College London, New York University)

---

![Superbe diagramme d'un RAG](img/rag.png)

## RAG en bref

Requête d'une base de données[^note] avec des méthodes de Recherche d'Information (TF-iDF ou similarité cosinus) + intégration des morceaux extraits au prompt. Le LLM effectue une synthèse. Ex: NotebookLM

[^note]: ou d'un moteur de recherche

## Points d'attention sur le RAG

- Jeux de données externes peut aussi être biaisé,
- Ajout de couches d'interprétation,
- Dissémination de l'information quand l'information se trouve dans plusieurs chunks,
- Angles morts quand l'information importante est dans un chunk non extrait.

