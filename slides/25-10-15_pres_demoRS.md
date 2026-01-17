---
title: IA et sérendipité  - comparer différentes stratégies de recherche d'information exploratoire
author: Alexia Schneider `alexia.schneider@umontreal.ca` (UdeM)
date: 2025-10-15
bibliography: ../phd_udem.bib
link-citations: true
colorlinks: true
fig-cap-location: bottom
format:
    revealjs: 
        output-file: "presentationCirce.html" 
        # template: simple
        smaller: true
        # incremental: true
        scrollable: true
        slide-number: true
---

## Plan
<!-- vérifier si bill readings -> algorithme de re-ranking (h-index)
faire visualisation et programme démo -->
1. Contexte et présentation de l'outil (20min)
<!-- - état actuel des systèmes de RI et les RS : 
    - problème de l'explicabilité 
    - limite de la représentation sémantique de l'hypothèse distributionnelle
- angle : la sérendipité
    - la découvrabilité 
    - définition de la sérendipité
    - importance de la sérendipité en science 
    - sérendipité et numérique 
- Solution proposée
    - un RS hybride pour l'explicabilité 
    - cadre théorique -->


2. Démonstration du système de recommandation (10min)

# État actuel des systèmes de RI et de RS

## Contexte 

Les moteurs de recherche et bases de données scientifiques :

- proposent des articles « similaires » sans expliquer les critères de rapprochement.
- s’appuient sur :
    - le nombre de citations (Matthew's effect) [@desollapriceLittleScienceBig1963; @mertonMatthewEffectScience1968], 
    - des algorithmes de classement favorisant les articles déjà populaires (ranking) et les auteurs les plus cités [@cardonDansLespritPageRank2013]. 
    - les intéractions précédentes des utilisateur.ice.s. [@kosterSerendipitousRecommendationBased2014]

[Page d'exemple sur Isidore](https://isidore.science/document/20.500.13089/k0dm) 


## Problématique

Ces logiques entraînent :

Une concentration des citations et une perte de diversité scientifique. 

Des **bulles de filtres** [@pariserFilterBubbleWhat2011] et un **biais de confirmation** dans la recherche [@underwoodTheorizingResearchPractices2014]. 


## Les AI research assistant

Les moteurs de recherche académiques développent des méthodes de RI basées sur l'IA : 

- _Query augmentation_ 
- _semantic search_ ou recherche vectorielle
- (re)ranking 

Les articles proposés par ces _recommender systems_ (RS) peuvent varier en fonction de la stratégie sous-jacente : quid de la reproductibilité et de l'explicabilité [@tayReproducibilityInterpretabilityAcademic2025] ?

## Les systèmes de recommandation et la logique déterministe

Certains systèmes de recommandation reflètent une modélisation sémantique distributionnelle :

> You shall know a word by the company it keeps. 
> --- @firthStudiesLinguisticAnalysis1962

vs. 

> Colorless green ideas sleep furiously
> --- @chomskySyntacticStructures1957

Dans le cadre d'une recherche d'information : faut-il chercher seulement ce qui est le plus probable ?  

**Conséquence : cristallistion d'un modèle sémantique induit d'une probabilité basée sur une fréquence d'occurrence dès la requête effectuée** et plus seulement pour la recherche d'articles pertinents. 

La manière de requêter un moteur de recherche va déterminer les informations auxquelles nous avons accès et sur lesquelles nous basons nos recherches.   

# La sérendipité comme alternative épistémologique 

## Découvrabilité 

L'innovation et la recherche dépendent fortement de notre capacité à effectuer de nouveaux liens sémantiques.

Deux faces : 

- trouvabilité : accéder à l'information que l'on cherche (côté de l'indexation documentaire)
- sérendipité : accéder de manière fortuite à ce qu'on ne sait pas ne pas savoir (côté utilisateur)

Beaucoup étudié dans le contexte du e-commerce et la diffusion de contenus culturels sinon par les sciences de l'information et de la documentation. 


## Définition de la sérendipité

'browsing' est un processus a 4 dimensions [@riceResultsMotivatingThemes2001] : 
1. the act of scanning;
2. the presence or absence of purpose;
3. the specificity of search outcomes or goals; 
4. and knowledge about the resource and object sought.

La sérendipité est le processus et le résultat de ce 'chance encounter'. 

![Modélisation de la sérendipité [@makriComingInformationSerendipitously2012]](model.png)

NB : dans ce modèle : dimension réflexive de la sérendipité par contraste avec le hasard.

## Place de la sérendipité dans la science

Les approches exploratoires et sérendipitaires en recherche documentaire :

- exploitent la profusion pour générer des connexions inattendues [@batesDesignBrowsingBerrypicking1989; @erdelezInformationEncounteringIts1999]

- favorisent le décloisonement disciplinaire [@dumasprimbaultNaviguerDansSavoirs2023]. 

## La sérendipité et le numérique 

L'exploration au coeur de l'expérience du numérique connecté : 

>la force politique d’Internet (1969-2009) réside dans la prééminence donnée à une catégorie particulière d’activité : l’exploration. Internet s’est fondamentalement constitué sur le réaménagement de l’action autour de l’exploration : il a donné la prééminence à l’expérimentation sur l’intériorisation, aux tâtonnements incertains sur les apprentissages formels, au jeu et au défi sur l’examen scolaire. Il a structuré des communautés sceptiques, ouvertes et curieuses.
> --- [@aurayTechnologiesLinformationRegime2011]

vs. l'émergence de logiques algorithmiques limitantes : 

> While it was felt that some element of control could be exercised to attract “chance encounters”, there was a perception that such encounters may really be manifestations of the hidden, but logical, influences of information gatekeepers – inherent in, for example, library classification schemes 
> --- [@fosterSerendipityInformationSeeking2003]

<!-- Dumas Primbault : importance des disciplines pivots -->

# Comment réintégrer une recherche exploratoire explicable ? 

## Défis de la sérendipité

Reproductibilité : comment garder trace d'un parcours exploratoire? On garde en mémoire un nombre limité d'étapes qui mènent à une résolution  [@erdelezInvestigationInformationEncountering2004]. 

Évaluation : comment évaluer l'impact d'une trouvaille ? Et l'intérêt d'une nouvelle fonctionnalité de recherche [@pouyllauUtiliserIsidorescienceRegard2023; @pouyllauDurabiliteRefactorisationInstruments2025] ?

Design : comment expliciter la différence entre une recherche par mots-clés simple et une recherche assistée par une stratégie d'IA pour un.e utilisateur.ice sans connaissance particulière de ces enjeux ?

## Questions de recherche

Comment concevoir un système de recommandation explicable qui :

Favorise la sérendipité et l’exploration critique ?

Compare IA symbolique et IA connexionniste ?

Permette une visualisation réflexive du raisonnement algorithmique ?

# Proposition 

## Un RS hybride 

Un RS qui vient s'ajouter aux moteurs de recherche de publications scientifiques et proposer une exploration de la littérature scientifique de façon explicable et non-déterministe, en comparant les recommandations basées sur :

- des ontologies symboliques (IEML)
- des modèles connexionnistes (LLM)


## Cadre théorique  

Positionnement : 

- la sérendipité comme alternative épistémique et reprise d'une vision du web désengagé des discours de productivité
- à contre-courant des modèles dominants de pertinence et de ranking, de mise en avant des contenus, mais aussi des outils techniques d'où l'utilisation d'un langage hérité du Web Sémantique : IEML [@levySocialComputingReflexive2010] 
- proposer un outil pour une litéracie du numérique et particulièrement une littératie critique de l'IA 
[@goodladEditorsIntroductionHumanities2023; @vitali-rosatiManifestePourEtudes2025a] en se concentrant sur l'explicitation des stratégies de recherche d'information [@julienHowHighschoolStudents2009]. 


## IEML comme base ontologique 

Langage sémantique inventé par Pierre Lévy [@levySocialComputingReflexive2010] :

Vocabulaire contrôlé et non ambigu

Chaque concept est décomposé selon 9 rôles sémantiques :
`thème, qui, quoi, à qui, par quoi, quand, où, pourquoi, comment`

Interopérable et explicable qui permet une navigation non-linéaire dans les concepts

## Méthodes d’implémentation 

Parsing sémantique : via LLM + dictionnaire IEML (RAG)

Recherche sémantique : embeddings pour la similarité

Interface : JavaScript / HTML / API Isidore

Tests : intégration Firefox puis Chrome

## Travaux connexes 

RS exploratoires : 

- Bridger [@portenoyBurstingScientificFilter2022] relie des communautés scientifiques éloignées, 
- STAK [@martinSTAKSerendipitousTool2017], reconstitution des étagères de bibliothèque en VR

Parsing sémantique : 
- échec des LLM à produire des AMR valides [@ettingerYouAreExpert2023]
- pas d'application d'IEML

Recherche sémantique par embeddings : 
- VITALITY [@narechaniaVITALITYPromotingSerendipitous2022]
- Microsoft Academic Knowledge project [@farberMicrosoftAcademicKnowledge2019]

## Schéma du fonctionnement 

![Processus de recommandation hybride](recommendation_systems-1.png)

Bleu = IEML

Orange = LLM

Vert = Actions utilisateur

→ L’utilisateur explore, sélectionne, et compare les résultats des deux approches

![Visualisation côte-à-côte des suggestions via les logs IEML et le 'semantic search' du LLM](img/visualisation.png)


<!-- ## Fonctionnalités clés 

Extraction automatique de mots-clés depuis la page Isidore

Identification des concepts présents dans IEML

Traduction automatique des mots-clés manquants via LLM

Navigation dans la grille sémantique IEML

Comparaison des articles recommandés (IEML vs LLM) -->


## Défis et perspectives

1. Traduction IEML:

- Avantage : flexibilité dans la définition, pas de “gold standard” : évaluation possible par des métriques sans référence (perplexité, distance cosinus)
- RAG sur le dictionnaire de ~3000 entrées IEML
- Évaluation humaine (Pierre Lévy)

2. Interaction avec les plateformes : API Isidore accessible, Google Scholar non garantie

3. Conception UX/UI : 

- "interface intuitive" vs. logique intempestive
- Équilibre entre documentation et liberté

4. Intérêt fondamental : 

- Évaluation utilisateur : entretiens « think aloud » pour mesurer la valeur pédagogique
- Comment observer si l’outil déclenche de nouvelles associations sémantiques ?

# Démonstration

## Bibliographie

::: {#refs}
:::

# Merci pour votre attention ! 












