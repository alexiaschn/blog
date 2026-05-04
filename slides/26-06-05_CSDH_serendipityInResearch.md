---
title: "AI-powered research assistant’ and the invisible transformations of research practices"
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

## Introduction

<!-- This paper reflects on the current transformations of information retrieval systems, recommendation
systems, and automated literature review tools. Despite their potential impact on innovation and
discoverability in science, the role of these systems remains largely invisible. The integration of
AI systems into all phases of information retrieval suggests that new, discrete research practices —
such as those described by Clavert and Muller—are becoming entrenched without full awareness of
their impact on knowledge production. In this paper, I will update the stakes of scholarly literature
discoverability through a state-of-the-art review of AI research assistants, assessing their influence
on the scientific ecosystem and emerging discrete research practices. I will also propose avenues for
reflection, design suggestions, and architectural frameworks for recommendation and information
retrieval systems tailored to address these major challenges -->

**This presentation highlights the added value of serendipity as an epistemic alternative and proposes ways to enhance human agency in so-called AI tools and features within the context of documentary research.**

Contributions: 

- Description of the possible influence of automation features for semantic tasks within the ecosystem of scholarly content production and dissemination. 
- Theoretical contribution: serendipity as a support for human agency and an epistemological alternative to dominant Information Retrieval (IR) paradigms.
- Concrete technical proposals for enhancing human agency. 

## Outline 

1. AI assistants and documentary research  
2. Serendipity as an epistemological alternative to the discoverability regime materialized by current AI tools.
3. Proposals for developing tools that value human agency.


# AI Assistants and Documentary Research  


## "Artificial Intelligence" and Information Retrieval

AI: "automation of cognition" @abbassEditorialWhatArtificial2021

Information Retrieval: matching a query with one or more documents. 

Context: the subject spans the entire research dissemination process at all stages: from writing/editing to dissemination, and finally to query construction. 

--- 

![An ecosystem from article writing to the queries that allow it to be found: interactions between humans and digital tools](img/article_pipeline.png)


## Typology of possible AI interventions in documentary research

1. Metadata creation: disambiguation, keyword creation, subject classification, abstract generation. Example: [Isidore](https://isidore.science) -> _machine learning_ for attributing related subjects. 
2. Query expansion: thesaurus, ontology vs. _query expansion_
3. Information retrieval method: lexical search (boolean, regex, TF-IDF, BM25) vs. so-called semantic search (vector comparison). 
4. Ranking  
5. Enrichment of the results list 
6. Synthesis and analysis of sources: RAG, _deep search_

Typology partially proposed by @tayWhatWeActually2025.

<!-- ## Reranking

Ranking of presented articles according to a relevance criterion relative to the query. 

1. Classic _Machine learning_ (training a model for ranking).

2. Vector comparison (query/article title): score = proximity. Example: Primo search assistant[^primo]

3. Evaluation by a 'gen AI' type LLM: ranking prompt or relevance categorization. Provide explanations: Example: Asta

4. Addition of external criteria Example: SemanticScholar, "highly-cited papers"

[^primo]: Source: https://knowledge.exlibrisgroup.com/Primo/Product_Documentation/020Primo_VE/Primo_VE_(English)/015_Getting_Started_with_Prim_Research_Assistant
 -->

---

![Asta presents the justification for the relevance category](img/asta.png)
<!-- 
## Enrichment of the results list -->
--- 

![Google Scholar Labs provides an explanation for the article's presence in the results list](img/googlescholarlabs.png)

<!-- ## Article synthesis or literature review assistant

Synthesis of extracted articles to answer a natural language question => RAG. 

1. Simple RAG: Elicit, SciSpace (source: Semantic Scholar, OpenAlex), Semantic Scholar's TLDR function. 

2. _Deep research_: Agentic AI, specialization of multiple agents, returns a complete report in a few minutes. Specialized features Example: Consensus "Study Snapshot" feature.   -->

--- 

![Deep research with Undermind.ai](img/undermindai.png)

[source](https://app.undermind.ai/report/96d1ce264f5b976eac434514d16e2529a99968d6928b225d57859617b14beca1)

## Limitations of synthesis tools

- Which databases?
- Based only on metadata (abstracts)?
- Can invent sources to answer a question (-> _citogenesis_ phenomenon that predates LLMs and _lit review assistants_.)

> The AI-generated things get propagated into other real things, so students see them cited in real things and assume they’re real, and get confused as to why they lose points for using fake sources when other real sources use them [@kleeAIInventingAcademic2025]

## The Oracle 

- Black box effect
- "blank box"[@tayBlankBoxProblem2026]
- The "sparkle" magic thinking and utilitarian discourse.

# Serendipity as an Epistemological Alternative
<!-- 
## Distributional Hypothesis-Based Semantic Modeling

Distributional hypothesis by @harrisDistributionalStructure1981. 

> You shall know a word by the company it keeps. 
> --- @firthStudiesLinguisticAnalysis1962


vs. 

> Colorless green ideas sleep furiously
> --- @chomskySyntacticStructures1957

In the context of information retrieval: **should we only search for what is most probable?**

**Consequence: crystallization of a semantic model induced from a probability based on occurrence frequency as soon as the query is made**, and not just for finding relevant articles. 

The way one queries a search engine will determine the information to which we have access and on which we base our research.    -->


## Discoverability 

Innovation and research depend heavily on our ability to make new semantic links.

Two faces: 

- Findability: accessing the information one is looking for (document indexing side)
- Serendipity: accidentally accessing what one did not know one did not know (user side)

Much studied in the context of e-commerce and dissemination of cultural content, otherwise by information and documentation sciences for discoverability in science.  

## Serendipity 

'Browsing' is a 4-dimensional process [@riceResultsMotivatingThemes2001]: 

1. the act of scanning;
2. the presence or absence of purpose;
3. the specificity of search outcomes or goals; 
4. and knowledge about the resource and object sought.

Serendipity is the process and result of this '_chance encounter_' -> creativity of the connection. 

![Modeling of serendipity [@makriComingInformationSerendipitously2012]](img/modelSerendipityMakri.png)

Importance of the **reflexive dimension** to distinguish serendipity from chance.
<!-- 
## Serendipity, Creativity, and LLMs

> The work of any creative system can be viewed as a process of search through a space of possibilities or a ‘possibility space’” 
> --- @perkinsInsightMindsGenes1994 cited by @bjornebornAdjacentPossible2022 

Latent space: the space of possibilities according to constraints defined by the algorithm developer, containing everything an algorithm is capable of predicting.  -->


## Place of Serendipity in Science

Exploratory and serendipitous approaches in documentary research:

- "adjacent possible" [@kauffmanInvestigations1996; @bjornebornAdjacentPossible2022]: environmental constraints give rise to a negotiation between exploitation and exploration [@monechiWavesNoveltiesExpansion2017]

- exploit the profusion to generate unexpected connections [@batesDesignBrowsingBerrypicking1989; @erdelezInformationEncounteringIts1999]

- favor disciplinary bridging [@dumasprimbaultNaviguerDansSavoirs2023] 


<!-- Dumas Primbault: importance of pivot disciplines -->


## Serendipity and Digital Technology

Exploration at the heart of the connected digital experience: 

> The political power of the Internet (1969-2009) lies in the preeminence given to a particular category of activity: exploration. The Internet was fundamentally constituted by the reorganization of action around exploration: it gave preeminence to experimentation over internalization, to uncertain fumbling over formal learning, to play and challenge over school examination. It structured skeptical, open, and curious communities.
> --- [@aurayTechnologiesLinformationRegime2011]

vs. the emergence of limiting algorithmic logics: 

> While it was felt that some element of control could be exercised to attract “chance encounters”, there was a perception that such encounters may really be manifestations of the hidden, but logical, influences of information gatekeepers – inherent in, for example, library classification schemes 
> --- [@fosterSerendipityInformationSeeking2003]



## Challenges of Serendipity

Reproducibility: how to keep track of an exploratory path? We retain in memory a limited number of steps leading to a resolution [@erdelezInvestigationInformationEncountering2004]. 

Evaluation: how to evaluate the impact of a finding? And the interest of a new search feature [@pouyllauUtiliserIsidorescienceRegard2023; @pouyllauDurabiliteRefactorisationInstruments2025] ?

Design: in what way can we create points of affordance that allow users to _find meaning_ ?

## Research Questions 

How to design explainable systems that:

- Are at the center of environments that favor serendipity and critical exploration?

- Allow for reflective interaction with the algorithm?

# Proposals 


## Make Room for Uncertainty

A paradigm shift. 

The Digital Humanities paradigm: 

> « Can we conceive of models of interface that are genuine instruments for research? That are not merely queries within pre-set data that search and sort according to an immutable agenda? How can we imagine an interface that allows content modeling, intellectual argument, rhetorical engagement? » 
> --- [@druckerPerformativeMaterialityTheoretical2013]

Counterfactualization: [@chevillonAlgorithmesQueersPerturber2026] identify which explanatory variable to change in the algo to obtain a different result: make alternative possibilities explicit. 

And _delight_ in the user experience. [@rodwellUserExperienceUX2025] 
<!-- 
Example: the _Provotype_ [@boerProvotypesParticipatoryInnovation2012] -->

=> Make uncertainties and tool limitations appear. 

## Disorder  

Example: [françaiS au pluriel](https://www.enfrancaisaupluriel.fr/library?mode=tree) [@suchetFrancaiSAuPluriel2026]

---

![françaiS au pluriel: tree structure](img/francaisPluriel_arborescence.png)


--- 

![françaiS au pluriel: superposition](img/francaisPluriel_superposition.png)

---

![françaiS au pluriel: history](img/francaisPluriel_historique.png)


## Explore Other Facets

Highlight underexplored semantic facets to offer other paths. 

Example: typology of citation type -> citation network beyond quantification

---

![Visualization of citation disagreement on a corpus of articles from the journal _Itinéraires_ (in development: classifications are randomized)](img/desaccordCitation_itinerairesOverview.png)

---

![Visualization by citation type for an article (in development: classifications and scores randomized)](img/desaccordCitation_articleView.png)



## Restitution as Support for Expertise 

- Complete reports tracing the algorithmic mediation of the user's request to the response or list of articles returned (reranking criteria, query reformulation prompt, etc.). 

- Expose the tool's limitations and capabilities Example: Barista, the query builder assistant on Impresso  

---

![Side-by-side visualization of search panels in IEML-RS
](img/etape6_affichageArticles.png)


## Specialization of Classification and Quantification 

Specialized classification assists human judgment:

Example: Evidence-RAG from the _Journal of Digital History_: assists the editor in presenting the evaluation of an article: situates the relevance of a comment relative to the evaluated article.


Example: Citation disagreement in a citation network 



## Exaptation and Imperfection

(evolution theory): "opportunistic selective adaptation, favoring characteristics that are useful for a new function, for which they were not initially selected."


Example: "Misappropriation" of the search of search engines reputedly flawed by Gallica [@dumasprimbaultDecouvrabiliteCommePrise2025]


## Friction 

Generative adversarial networks (GANs) [@goodfellowGenerativeAdversarialNetworks2014] and antagonistic AI [@caiAntagonisticAI2024]. 

Spirit of contradiction: allowing correction and evaluation by the user. [@schneiderImperfectAIUphold2026] to come at INKE

Example: IEML-RS [@schneiderReclaimingEpistemicAgency2026]

---

![IEML-RS, keyword extraction from the _seed_ article](img/etape1_extractionKeywords.png)

---

![IEML-RS, selection of a keyword translated into IEML](img/etape2_selectionConcept.png)

---

![IEML-RS, selection of a keyword **not translated** into IEML - automatic translation with `gemini`](img/etape3_propositionTraduction.png)
<!-- 
(Pierre Lévy's idea: allow correction of the automatic translation in IEML generated by Gemini). -->

## Summary of Proposals

- Make room for uncertainty
- Disorder  
- Explore other facets 
- Restitution as support for expertise
- Specialization of classification and quantification
- Exaptation 
- Friction

# Conclusion

Serendipity as a process of reflective selection in the face of a mass of documents can be a proven vector of creativity to materialize human agency. 

Developing tools that make choices explicit, and leave room for many diverging realities rather than leaving a frictionless interface can highlight human agency. 

## Acknowledgements 

This work benefited from a grant thanks to funding from the Consulat General de France au Quebec and the Fonds de recherche du Québec, which enabled a research stay at the Huma-Num Lab via the Sophie Germain mobility grant. 

  <!-- (« #DOSSIER » or https://doi.org/10. 10.#####/#####) when I have the DOI -->

Research funded by the CRSH through the Revue3.0 partnership project as well as a grant from the Circé Network for mutualization and research for scientific journals. 


## Bibliography