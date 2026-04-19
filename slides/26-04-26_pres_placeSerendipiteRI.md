---
title: "Quelle place pour la sérendipité dans les nouvelles pratiques de recherche documentaire assistées par IA ? "
abstract: Introduction to research
author: 
    - name: Alexia Schneider 
      orcid: 0009-0000-0651-9792
      email: alexia.schneider@umontreal.ca
date: 2026-04-14
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
footer: "Alexia Schneider - 2026"
---

<!-- abstract ;


La multiplication de "AI-powered research assistant" fait intervenir à tous les niveaux de la recherche d'information (RI) des algorithmes dits d'"IA", sans préciser bien souvent la place et la teneur des processus d'automatisation en jeux. En plus de renouveller les interrogations autour des filtres interprétatifs et critères de pertinences appliqués aux requêtes utilisateur, ces nouveaux outils ou nouvelles fonctionnalités orientent nos pratiques et ont le potentiel de transformer notre rapport à la découvrabilité et à l'innovation qu'elle sous-tend. Cette communication propose de cerner ces changements en cours, notamment ceux qui engagent une redéfinition paradigmatique de la sérendipité dans les pratiques de RI en contexte académique. 


si ces assistants nous promettent un équilibre entre trouvabilité et sérendipité, la difficile reproductibilité et le manque de transparence de certaines de ces architectures de recherche dite sémantique, renouvelle les interrogations sur la place du filtre qu'elles invisibilisent à travers des critères de pertinence et des méthodes de _ranking_ 

opérés par les algorithmes de RI.  
Si ces algorithmes permettent de personnaliser le contenus, on peut se demander s'ils ne provoquent pas des "bulles de filtre" comme les nomme Eli Pariser, et s'ils se basent sur des métriques de citation, alors on peut se demander s'ils ne favorisent pas la concentration de citation aux mains d'un nombre réduit. 
Derrière la question du simple accès à l'information, se pose celle de l'invisibilisation de certains points de vue et de l'impact qu'on ne peut mesurer des méthodes de valorisation de certaines publications. 
 -->

## Plan 

1. Les assistants IA et la recherche documentaire  
2. La sérendipité comme alternative épistémologique au régime de découvrabilité matérialisé par les outils d'IA actuels.
3. Propositions pour le développements d'outils valorisant l'agentivité humaine.

<!-- intervention épistémologique, pas de méthodologie, pas de résultats -->

# Les assistants IA et la recherche documentaire  

## Introduction


**Cette communication présente la plus-value de la sérendipité comme alternative épistémique et fait état de propositions pour valoriser l'agentivité humaine dans les outils et fonctionnalités dites d'IA en contexte de recherche documentaire.**

Contributions : 

- Description de l'influence possible de fonctionalités d'automatisation de tâches sémantiques dans l'écosystème de la production et diffusion de contenu savant. 
- Contribution théorique : la sérendipité comme support à l'agentivité humaine et  alternative épistémologique aux paradigmes dominants de RI.
- Propositions techniques concrètes de valorisation de l'agentivité humaine. 


## IA et RI

IA : "automatisation de la cognition" @abbassEditorialWhatArtificial2021

Recherche d'Information (RI) : mise en correspondance d'une requête avec un ou plusieurs documents. 

Contexte : le sujet traverse toute la diffusion de la recherche à toutes les étapes: de l'écriture/édition à la diffusion et enfin la construction de requêtes. 

--- 

![Un écosystème de la rédaction d'article aux requêtes qui permettent de le trouver : interactions entre humains et outils numériques](img/article_pipeline.png)


## Typologie des interventions possibles de l'IA dans la recherche documentaire

1. Création de métadonnées
2. Expansion de requête
3. RI 
4. Classement
5. Enrichissement de la liste de résultats 
6. Synthèse et analyse des sources

## Création de métadonnées

Désambiguisation, keywords, classification de topics, abstract. 
(OpenAlex, Isidore? -> ML pour attribution de sujets reliés). 

## Expansion de requête

1. Méthodes sans IA : thésaurus, ontologies.

2. _Query expansion_ avec un LLM: "Écrit 10 variants de la requête suivantes"

## Méthodes de Recherche d'information 

1. Méthodes classiques (non IA ?): 
    - recherche exacte[^regex] avec opérateurs booléens: 
    ex: '**citation**' retourne 'The decrease in uncited articles and its effect on the concentration of **citation**s'
    - recherche lexicale statistique: TF-iDF (_term frequency inverse document frequency_) et BM25 -> ranking de la recherche terme par rapport à sa présence dans le corpus. 
    - ex: SemanticScholar, Isidore

2. Recherche sémantique (_semantic search_/_dense retrieval_) utilisation des plongements lexicaux de modèles types encodeur (BERT) ou décodeur (e.g. GPT) lors de la recherche: représentation vectorielle de la requête et de l'entièreté de la base de données -> mesure de similarité cosinus.
    - ex: fonction "Semantic Results" de JSTOR 

3. Recherche hybride (_hybrid search_): mélange de 1. et 2. (pas forcément 50/50). 

-> Impact sur la manière de requêter: 1. par mot-clé, 2. 'en langue naturelle'. 

[^regex]: ou regex!

## Reranking

Classement des articles présentés selon un critère de pertinence par rapport à la requête. 

1. ML classique (entraînement d'un modèle au classement)

2. Comparaison de vecteurs (requête/titre de l'article): score = proximité. ex: Primo search assistant[^primo]

3. Évaluation par un LLM type 'gen AI' : prompt de classement ou catégorisation de pertinence. Fournissent les explications: Ex: Asta

---

![Asta présente la justification de la catégorie de pertinence](img/asta.png)

## Reranking (suite)

4. Ajout de critères externes Ex: semantic Scholar, "highly-cited papers"

[^primo]: Source: https://knowledge.exlibrisgroup.com/Primo/Product_Documentation/020Primo_VE/Primo_VE_(English)/015_Getting_Started_with_Primo_Research_Assistant

## Enrichissement de la liste de résultats

![Google Scholar Labs donne une explication de la présence de l'article dans la liste de résultat](img/googlescholarlabs.png)

## Synthèse des articles ou assistant de revue de littérature

Synthèse des articles extraits pour répondre à une question en langue naturelle => RAG. 

1. RAG simple: Elicit,  SciSpace (source: Semantic Scolar, Open Alex), fonction TLDR de Semantic Scholar. 

2. _Deep research_ : Agentic AI, spécialisation de plusieurs agents, retourne un rapport complet en quelques minutes. Fonctionalités spécialisés Ex: Consensus fonctionalité "Study Snapchot".  

--- 

![Undermind.ai](img/undermindai.png)

[source](https://app.undermind.ai/report/96d1ce264f5b976eac434514d16e2529a99968d6928b225d57859617b14beca1)

## Limites des outils de synthèse

- Quelles bases de données ?
- Basé sur métadonnées seulement (abstract) ?
- Peut inventer des sources pour répondre à une question (-> _citogenesis_ phénomène qui précède les LLM et les _lit review assistants_.)

> The AI-generated things get propagated into other real things, so students see them cited in real things and assume they’re real, and get confused as to why they lose points for using fake sources when other real sources use them [@kleeAIInventingAcademic2025]

## L'oracle 

- effet boîte noire
- "blank box"[@tayBlankBoxProblem2026]
- "sparkle" et discours utilitariste.

# La sérendipité comme alternative épistémologique

## La modélisation sémantique basée sur l'hypothèse distributionnelle 

Hypothèse distributionnelle de @harrisDistributionalStructure1981. 

> You shall know a word by the company it keeps. 
> --- @firthStudiesLinguisticAnalysis1962


vs. 

> Colorless green ideas sleep furiously
> --- @chomskySyntacticStructures1957

Dans le cadre d'une recherche d'information : **faut-il chercher seulement ce qui est le plus probable ?**

**Conséquence : cristallistion d'un modèle sémantique induit depuis une probabilité basée sur une fréquence d'occurrence dès la requête effectuée** et plus seulement pour la recherche d'articles pertinents. 

La manière de requêter un moteur de recherche va déterminer les informations auxquelles nous avons accès et sur lesquelles nous basons nos recherches.   

# La sérendipité comme alternative épistémologique 

## Découvrabilité 

L'innovation et la recherche dépendent fortement de notre capacité à effectuer de nouveaux liens sémantiques.

Deux faces : 

- trouvabilité : accéder à l'information que l'on cherche (côté de l'indexation documentaire)
- sérendipité : accéder de manière fortuite à ce qu'on ne sait pas ne pas savoir (côté utilisateur)

Beaucoup étudié dans le contexte du e-commerce et la diffusion de contenus culturels sinon par les sciences de l'information et de la documentation. 

## Sérendipité et créativité

'browsing' est un processus a 4 dimensions [@riceResultsMotivatingThemes2001] : 

1. the act of scanning;
2. the presence or absence of purpose;
3. the specificity of search outcomes or goals; 
4. and knowledge about the resource and object sought.

La sérendipité est le processus et le résultat de ce '_chance encounter_' -> créativité de la connexion. 


![Modélisation de la sérendipité [@makriComingInformationSerendipitously2012]](img/modelSerendipityMakri.png)

NB : dans ce modèle : **dimension réflexive** de la sérendipité par contraste avec le hasard.

## Sérendipité, créativité et LLM

> The work of any creative system can be viewed as a process of search through a space of possibilities or a ‘possibility space’” 
> --- @perkinsInsightMindsGenes1994 cité par @bjornebornAdjacentPossible2022 

Espace latent : espace des possibles selon les contraintes définies par la développeuse de l'algorithme, contient tout ce qu'est capable de prédire un algorithme. 


## Place de la sérendipité dans la science

Les approches exploratoires et sérendipitaires en recherche documentaire :

- "adjacent possible" [@kauffmanInvestigations1996; @bjornebornAdjacentPossible2022] : contraintes environnementales donne lieu à une négociation entre exploitation et exploration [@monechiWavesNoveltiesExpansion2017]

- exploitent la profusion pour générer des connexions inattendues [@batesDesignBrowsingBerrypicking1989; @erdelezInformationEncounteringIts1999]

- favorisent le décloisonement disciplinaire [@dumasprimbaultNaviguerDansSavoirs2023] 


<!-- Dumas Primbault : importance des disciplines pivots -->


## La sérendipité et le numérique 

L'exploration au coeur de l'expérience du numérique connecté : 

>la force politique d’Internet (1969-2009) réside dans la prééminence donnée à une catégorie particulière d’activité : l’exploration. Internet s’est fondamentalement constitué sur le réaménagement de l’action autour de l’exploration : il a donné la prééminence à l’expérimentation sur l’intériorisation, aux tâtonnements incertains sur les apprentissages formels, au jeu et au défi sur l’examen scolaire. Il a structuré des communautés sceptiques, ouvertes et curieuses.
> --- [@aurayTechnologiesLinformationRegime2011]

vs. l'émergence de logiques algorithmiques limitantes : 

> While it was felt that some element of control could be exercised to attract “chance encounters”, there was a perception that such encounters may really be manifestations of the hidden, but logical, influences of information gatekeepers – inherent in, for example, library classification schemes 
> --- [@fosterSerendipityInformationSeeking2003]



## Défis de la sérendipité

Reproductibilité : comment garder trace d'un parcours exploratoire? On garde en mémoire un nombre limité d'étapes qui mènent à une résolution  [@erdelezInvestigationInformationEncountering2004]. 

Évaluation : comment évaluer l'impact d'une trouvaille ? Et l'intérêt d'une nouvelle fonctionnalité de recherche [@pouyllauUtiliserIsidorescienceRegard2023; @pouyllauDurabiliteRefactorisationInstruments2025] ?

Design : comment expliciter la différence entre une recherche par mots-clés simple et une recherche assistée par une stratégie d'IA pour un.e utilisateur.ice sans connaissance particulière de ces enjeux ?

# Propositions 


## Questions à l'origine des propositions

Comment concevoir des systèmes explicables qui :

- Favorisent la sérendipité et l’exploration critique ?

- Comparent IA symbolique et IA connexionniste ?

- Permettent une visualisation réflexive du raisonnement algorithmique ?

## Changement paradigmatique

Paradigme DH : 

> « Can we conceive of models of interface that are genuine instruments for research? That are not merely queries within pre-set data that search and sort according to an immutable agenda? How can we imagine an interface that allows content modeling, intellectual argument, rhetorical engagement? » 
> --- [@druckerPerformativeMaterialityTheoretical2013]

Contrefactualisation :  [@chevillonAlgorithmesQueersPerturber2026] cerner quelle variable explicative changer à l'algo pour obtenir un autre résultat : expliciter les possibles alternatifs. 

Et le "Delight" dans l'expérience utilisateur. [@rodwellUserExperienceUX2025] 

Le provotype : 

_Provotype_ [@boerProvotypesParticipatoryInnovation2012]

=> faire apparaitre la limite et le potentiel à la fois. 

## L'exploration et le désordre  

Faire apparaitre d'autres facettes sémantiques pour permettre d'autres parcours : _exaptation_ :  recombination de ce qui est disponible. 

Ex: [françaiS au pluriel](https://www.enfrancaisaupluriel.fr/library?mode=tree)  [@suchetFrancaiSAuPluriel2026]

---

![françaiS au pluriel : arborescence](img/francaisPluriel_arborescence.png)


--- 

![françaiS au pluriel : superposition](img/francaisPluriel_superposition.png)

---

![françaiS au pluriel : historique](img/francaisPluriel_historique.png)


## Classification et quantification comme appui au jugement humain

Extraction sémantique aspectuelle basée sur une classification sélective et non une décision qu'on ne peut pas évaluer ex: classification selon une typologie ou un spectre de la pertinence d'une citation pour appuyer une évaluation plutôt qu'un commentaire rédigé synthétisant tout l'état de l'art de l'article. 


Ex: Evidence-RAG du C2DH-JDH


Ex : Le dés/accord de citation dans un réseau citationnel 

---

![Visualisation du dés/accord de citation sur un corpus d'articles de la revue _Itinéraires_ (en cours de développement : les classifications sont randomisées) ](img/desaccordCitation_itinerairesOverview.png)

---

![Visualisation par type de citation pour un article (en cours de développement : classifications  et scores randomisées)](img/desaccordCitation_articleView.png)


## Expertise et friction


- Rapports complets retraçant la médiation algorithmique de la demande utilisateur.ice à la réponse ou à la liste d'articles en retour (critères du reranking, prompt de reformulation de la requête etc. ). Ex : développement en cours à Impresso. 

- Proposer des points de comparaison: limiter l'effet "angle mort" en proposant des critères de pertinences originaux (càd pas seulement définis par les interactions précédentes ou le nombre de citation). 


---

![Visualisation côte-à-côte des panels de recherche dans IEML-RS
](img/etape6_affichageArticles.png)

## "Esprit de contradiction"

Réseaux antagoniste génératif (_generative adversarial networks, GANs_) [@goodfellowGenerativeAdversarialNetworks2014] et IA antagoniste [@caiAntagonisticAI2024]. 


Esprit de contradiction : permettre la correction et l'évaluation par l'utilisateur.ice. :  [@schneiderImperfectAIUphold2026] à venir INKE

Ex : IEML-RS [@schneiderReclaimingEpistemicAgency2026]

---

![IEML-RS, extraction des mots-clés du _seed_ article](img/etape1_extractionKeywords.png)

---

![IEML-RS, sélection d'un mot-clé traduit en IEML](img/etape2_selectionConcept.png)

---

![IEML-RS, sélection d'un mot-clé **non-traduit** en IEML - traduction automatique avec `gemini`](img/etape3_propositionTraduction.png)
<!-- 
 (idée de Pierre Lévy : permettre la correction de la traduction automatique en IEML générée par Gemini). -->



# Conclusion

La sérendipité comme processus de sélection réflexif face à une masse documentaire peut-être un vecteur de créativité probant pour matérialiser l'agentivité humaine. 

Développer des outils qui explicitent les choix effectués, et laisse la place à un **bruit transparent** plutôt que de laisser une interface sans aspérité peut mettre en avant l'agentivité humaine. 

## Remerciements 

Ces travaux ont bénéficié d’un octroi grâce au financement du Consulat général de France à Québec et du Fonds de recherche du Québec qui a permis un séjour de recherche au sein du Huma-Num Lab par la bourse de mobilité Sophie Germain. 

  <!--(« #DOSSIER » ou https://doi.org/10. 10.#####/#####) quand j'aurais le DOI  -->

Recherche financée par le CRSH à travers le projet de partenariat Revue3.0 ainsi qu'une bourse du Réseau Circé de mutualisation et de recherche pour les revues scientifiques. 


## Bibliographie