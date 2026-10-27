#import "@preview/dashy-todo:0.1.3" : todo
#set text(lang: "fr", size: 12pt, font:"BBB Baskervvol")
#let date = datetime.today().display("[year repr:full]")

#set page(paper: "us-letter", 
    // margin: (top: 3cm, bottom: 3cm, left: 3cm, right: 3cm),  
    binding: left,
)

#show regex("\d|\?") : set text(font: "Times New Roman")

#set par(justify: true)
// adding space below headings, default sticks the paragraph to the heading
#show heading: set block(below: 0.5cm)
#set heading(numbering: "1.")

#show heading.where(level: 3): set heading(outlined: false)
#show heading.where(level: 4): set heading(numbering: none)


#set footnote.entry(indent: 0em)
 
#let initfootnote(body) = {
  footnote(numbering: _ => [])[#body]
  counter(footnote).update(n => n - 1)
}

#set document(title: "Examen de Synthèse", author: "Alexia Schneider", date: auto)

// front cover

#line(start: (0%, 0%), end: (100%, 0%), stroke: (thickness: 2pt))
 
#let title = "Valoriser l'agentivité humaine dans la recherche
documentaire en contexte scientifique"

#show title: set align(horizon + left)
#show title: set text(size: 20pt, weight: "bold")

#title

#text(size: 14pt)[

#v(10cm)
Examen de Synthèse
#linebreak()
Alexia Schneider

Direction: Marcello Vitali-Rosati\
Co-direction: Philippe Langlais\
Jury: Michael Sinatra & Dominic Forest

Doctorat en Littératures et langues du monde option Humanités Numériques
#linebreak()
Université de Montréal
#linebreak()
]
#align(left+bottom)[

#date]
#line(start: (0%, 0%), end: (100%, 0%), stroke: (thickness: 2pt))

// end front cover 
#pagebreak()

// toc
#outline(depth: 2)

#outline(title: "Table des figures", target: figure)


#outline(title: "TODOs", target: figure.where(kind: "todo"))


#counter(page).update(0)

#pagebreak()

// land acknowledgment
#set page(numbering: "i",
 footer:  context { [#align(left)[#text(size: 10pt)[Examen de Synthèse - Alexia Schneider -  #date - i ]
 ]
 ]}
)
#heading(numbering: none)[Avant-propos]

Reconnaissance des terres
// [script de Zoë Renaudie]
// Je mène cette recherche à Montréal, sur le territoire non cédé des Kanien’kehá:ka, membres
// de la Confédération Haudenosaunee, qui sont les gardiens de ces terres et eaux. Tiohtià:ke
// est historiquement un lieu de rencontre et d’échange entre de nombreuses nations, y
// compris les Kanien’kehá:ka, les Anishinaabeg, les Huron-Wendat et d’autres peuples
// autochtones. Je reconnais les privilèges liés à ma nationalité qui me permettent d’avoir
// accès à ce territoire et à ses institutions pour effectuer mon doctorat. Cette reconnaissance
// m’engage à mener une recherche responsable. 
// 
// 

Le projet de recherche présenté dans ce dossier est effectué sur le territoire non cédé des Kanien’kehá:ka, membres de la Confédération Haudenosaunee, qui sont les gardiens de ses terres et eaux. Je reconnais que les opportunités qui me sont offertes à Tiohtià:ke, aussi appelé Montréal, résultent d'une histoire coloniale de violences et d'exploitation qui a affecté en première lignes les Premières nations vivant sur ce territoire, parmi lesquels les Kanien’kehá:ka, les Anishinaabeg et les Huron-Wendat. Les privilèges liés à ma nationalité me permettent d’avoir accès à ce territoire et à ses institutions pour effectuer mon doctorat. Cette reconnaissance m’engage à mener une recherche responsable. 


#line(length: 100%)


Le présent document a été rédigé en #link("https://typst.app")[Typst] dans l'environnement de développement #link("https://vscodium.com/")[VS Codium]. La typographie utilisée est BBB Baskervvol disponible dans la typothèque #link("https://typotheque.genderfluid.space/fr/", [Bye Bye Binary]). 

Dessinateur·ices des caractères post-binaires : Eugénie Bidaut, Julie Colas, Camille Circlude, Laure Giletti, Louis Garrido, Enz@ Le Garrec, Ludi Loiseau, Édouard Nazé, Julie Patard, Marouchka Payen, Mathilde Quentin.

Dessinateur·ices du Baskervville de l’ANRT : Alexis Faudot, Rémi Forte, Thomas Huot-Marchand, Morgane Pierson, Rafael Ribas, Tanguy Vanlaeys, Rosalie Wagner.

//  BBB DM Sans réalisée par Camille Circlude, Eugénie Bidaut, Mariel Nils et Bérénice Bouin,

Je remercie tous..tes les personnes qui œuvrent au développement de contenus et d'outils en libre accès et pour la représentation de la diversité dans le numérique.

#counter(page).update(0)
#counter(heading).update(0)

#set page(numbering: "1",
 footer:  context { [#align(left)[#text(size: 10pt)[Examen de Synthèse - Alexia Schneider -  #date - #counter(page).display("1/1", both: true)]]]}
)

= Présentation du sujet


== Introduction

L'adoption discrète @mullerPoussiereLumiereBleue2021 de nouveaux "assistants de recherche IA" met en tension l'impératif de productivité et les principes fondamentaux de la science @derewalEvaluatingLLMResearch2025. En effet, si les applications telles que Consensus, Elicit, Undermind etc. produisent de véritables états de l'art à partir d'une simple hypothèse formulée en langue naturelle, quelle valeur donner à la littérature savante produite à partir d'une recherche documentaire déléguée?

Si les questions d'invisibilisation des biais algorithmiques @cardonDansLespritPageRank2013, du renforcement des biais de confirmation @underwoodTheorizingResearchPractices2014, ou encore de l'opacification des critères de pertinence déjà favorable aux publications les plus citées @mertonMatthewEffectScience1968 sont adressés bien avant la mise à disposition de ces outils, il reste encore à définir la manière particulière dont leurs interfaces et mécanismes de recherche d'information et de classification des sources mettent en jeu ces problématiques. Les observations anciennes sur le potentiel persuasif des systèmes algorithmiques @dijkstraPersuasivenessExpertSystems1998 @loggAlgorithmAppreciationPeople2019 sont corroborées par les constats actuels de délégation cognitive induite par une utilisation impensée ou mal pensée de _chatbots_ @araujoAIWeTrust2020 @vicenteHumansInheritArtificial2023 @kosmynaYourBrainChatGPT2025. 

Il s'agit alors de penser des systèmes à même d'être intégrés directement aux espaces de diffusion de la littérature savante (revue, diffuseur, moteur de recherche) et 
qui réaffirment la dimension exploratoire de la recherche documentaire. 
Les systèmes de recommandation ou de visualisation des sources qui reposent sur une interaction de la part les utilisateur·ices valorisent la capacité de sélection et encouragent le développement des capacités de tri et de mise en relation originale des sources. Bien que sous-représentées actuellement, ces alternatives favorisent à terme diversité et innovation en science et promeuvent une nouvelle forme de littératie de l'IA.

Ce projet interroge la manière dont les "assistants de recherche IA" transforment nos pratiques de recherche documentaire scientifique et propose de développer des fonctionnalités et outils favorisant l'appropriation critique de l'"Intelligence Artificielle". La question centrale de ce projet est ainsi~: comment concevoir des outils à même de valoriser l'agentivité humaine dans la recherche documentaire employant des systèmes d'IA ?

Cette question met en lumière la complémentarité des apports théoriques et pratiques attendus de ce projet qui portera sur l'agentivité humaine à deux niveaux~: d'une part lors du développement et déploiement d'outils et d'autre part lors de la diffusion des résultats de recherche, diffusion qui elle-même participe à la compréhension générale du discours médiatique et public sur l'IA. 

== Contexte du projet

=== Positionnement sur l'"IA"

Afin de situer ce projet, il convient de revenir sur la notion d'"Intelligence artificielle" ou IA, expression qui se déploie dans trois dimensions distinctes. 

Tout d'abord, l'expression "Intelligence artificielle" réunit un ensemble de chercheur..ses issues des sciences informatiques depuis sa première utilisation en 1956 pour une demande de subvention de la Dartmouth Summer Research Project. En tant que discipline, deux approches se sont répondues dans l'opérationalisation d'un objectif commun, l'"automatisation de la cognition" @abbassEditorialWhatArtificial2021>. Deux approches se sont répondues dans cet espace @haenleinBriefHistoryArtificial2019 ~: l'approche dite symbolique, privilégiant les systèmes à base de règles, a concentré les efforts de la recherche pendant les premiers décennies de la discipline, avant que l'approche appelée connexionniste, basée sur des modèles statistiques, la supplante au tournant des années 2010 @russellArtificialIntelligenceModern2022.


Ensuite, la notion d'"Intelligence Artificielle" dans son sens courant est une métonymie renvoyant à certains produits, notamment dans leur forme d'application Web, depuis la sortie publique de l'application ChatGPT en décembre 2022. Le terme dans son sens courant reflète ainsi une tension entre la discipline tentant de définir l'intelligence et quelques propositions techniques dominantes à un moment donné @benbouzidQuatreNuancesRegulation2022. Ces propositions semblent être, depuis 2022, exclusivement centrées sur l'emploi de LLM. Sur le plan technique, ce projet repose sur le développement d'outils qui offrent un contrepoint à l'hégémonie actuelle de l'IA connexionniste sous forme de _chatbots_. Dans la lignée des propositions de #cite(<marcusNextDecadeAI2020>, form:"prose") il s'agit alors de revaloriser les systèmes à bases de règles pour produire des systèmes d'IA hybrides, à la fois flexibles (ce qui est le propre de l'IA connexionniste) et explicables (davantage possible pour les approches symbolistes). De manière générale, ce projet s'éloigne des formes applicatives centrées sur le dialogue en langue naturelle entre un..e utilisateur·ice et un programme informatique, car cette dimension dialogique tend à opacifier les biais algorithmiques et produire un effet d'anthropomorphisation (plus connu sous le nom d'"effet ELIZA" @hofstadterIneradicableElizaEffect1995) (voir section #ref(<domaine-recherche-documentaire>, supplement: [])).

Enfin, l'"Intelligence Artificielle" est devenu, par ce glissement sémantique de la discipline à une poignée d'applications généralistes, un sujet discursif à part entière @fergusonDarwinPrometheeTaylor2026 qui met en jeu tous les acteur..ices de la société, ensemble discursif dont la cartographie est désormais vaste et complexe @morinProjetArcanes2026 @bourassaPratiquesNarrativesMises2026. 
Bien que ce projet de recherche ne s'inscrive pas dans l'histoire des sciences et techniques, il s'intéresse à la façon dont les voix dominantes sur l'IA construisent une vision linéaire de l'histoire menant à la singularité ou "Intelligence artificielle générale" #todo("ref singularité") et ce à des fins capitalistes. 
// à nuancer peut-être 

Ce projet de thèse s'inscrit en revanche dans le champs disciplinaire des Humanités Numériques (HN) (voir #ref(<méthodologie>, supplement: [])) dont l'apparat critique et les méthodologies permettent de traiter de ces trois dimensions de l'IA parallèlement en offrant à la fois une réflexion sur les technologies du numériques, tout en appliquant ces technologies à des objets traditionnellement associés aux champs des Humanités @mccartyHumanitiesComputing2003.


=== La recherche documentaire en contexte scientifique et l'IA
<domaine-recherche-documentaire>


Le domaine d'application qui intéresse ce projet est la recherche documentaire en contexte scientifique, notamment pour les chercheur·ses en Sciences Humaines et Sociales (SHS). Plus particulièrement, ce projet s'attache à cerner les transformations, rapides, de cette pratique protéiforme #todo("ref pratiques de recherches = protéiforme") à travers une réflexion sur les "assistants de recherche IA". Les  réflexions sont appuyées sur le  développement d'outils à même de refléter un positionnement épistémologique en contre-pied de celui des entreprises de la Big Tech.

Nous commencerons par cerner le contexte plus large de la recherche scientifique entendu dans son sens large d'industrie reposant sur la publication d'articles scientifique et des contraintes implicites qui sous-tendent cette industrie du savoir. 


==== La recherche documentaire dans la production d'article scientifique

La recherche documentaire en contexte scientifique ne peut pas être décontextualisée de l'environnement de production de la littérature savante. La recherche documentaire est une tâche transversale à toute la recherche scientifique, intrinsèquement mélée à l'écriture d'une publication mais aussi à l'analyse et à l'appropriation des connaissances nécessaires à la production d'un publication originale et appuyée de l'état de l'art sur un sujet. 


#figure(image("img/diffuser-decouvrir-science.drawio.png", width: 100%), 
caption: [Écosystème de la production et de la dissémination de publications scientifiques.]) <fig-pipeline>

À partir de cette typologie se dessine un écosystème d'interdépendance entre dispositifs socio-techniques @akrichFormesMediationTechnique1993 et rôles humains dans les différentes étapes complémentaires et parallèles de production et de dissémination de publications scientifiques. Ce travail de recherche s'attache à comprendre cet écosystème comme un ensemble et tente de cerner les points d'influence des systèmes d'IA sur cet ensemble. La @fig-pipeline souligne la centralité de l'auteur..ice dans ce qui apparaît comme un système circulaire dans lequel la recherche documentaire joue un rôle continu de la rédaction d'un article à sa mise en correspondance avec une requête de recherche en passant par son indexation. 

Si l'on est tenté de placer les assistants de recherche IA à la fin d'une chaîne de production et de diffusion de la recherche, il apparaît qu'il s'agit en réalité d'outils dont l'influence se fait sentir dès l'exploration d'un sujet, lors de la rédaction d'une publication et dans le choix des méthodes d'indexation. Cela transforme profondément la tâche de recherche documentaire en contexte scientifique. 


==== Injonction contradictoire~: _publish or perish_ et déclaration d'usage

Le milieu académique semble être à un moment charnière dans la reconnaissance des systèmes d'IA au sein des pratiques de recherche. Le phénomène de «~_shadow AI_~», définie comme «~ la décision d'utiliser une IA sans accord d'utilisation des outils d'IA génératives et sans mention~» @dongShadowAIThrives2025[p.~3], reflète la tension entre une logique productiviste implicite et l'appel à un engagement transparent et raisonné avec les outils dits d'"IA générative". Ce phénomène s'inscrit dans la continuité des pratiques numériques discrètes décrites par #cite(<mullerPoussiereLumiereBleue2021>, form:"prose")~: des comportements de recherche, tels que le choix du moteur de recherche ou la formulation de requêtes de mots-clés, qui restent non documentés malgré leur influence potentielle sur les travaux présentés. Un signal empirique de cette pratique non documentée est le nombre croissant de publications où des phrases trahissent sans ambiguité l'utilisation de ChatGPT pour générer des passages entiers d'un article @strzeleckiMyLastKnowledge2025.

Somme toute, le monde de la recherche se trouve face à des injonctions contradictoires. Les comités scientifiques des revues, comme les maisons d'édition et les universités interdisent des usages souvent mal définis de l'"IA générative", tandis que les institutions universitaires invitent chercheur..ses et étudiant..es à apprendre à prompter et souscrivent à des abonnements à des outils propriétaires. 

La structure incitative implicite du monde de la recherche fonctionnant comme une entreprise @readingsUniversityRuins1999 @munchAcademicCapitalism2014 décourage la divulgation ouverte et encouragent l'utilisation d'outils qui accélèrent la production au détriment de la réflexion dans la fameuse logique du _publish or perish_. Même les réponses émergentes à ce problème, telles que les "étiquettes nutritionnelles" de l'IA @incAINutritionFacts2023 et similaires "déclarations d'usage de l'IA" @suchikovaGAIDeTGenerativeAI2026 sont remises en question quant à leur efficacité réelle par rapport à leur impact sur la réputation @shenFallaciesDataTransparency2025 et participent d'une logique normative déplaçant la responsabilité sur les individus. 


Les préconisations émanant des institutions et des comités scientifiques de publications savantes vont dans le sens d'une plus grande transparence, tant de la part des développeur·ses relativement à l'explicitation des opérations faites sur les sources que de la part des utilisateur..ices quant à leur usage réel de tous types de systèmes d'IA. Pour cerner les tranformations en cours et comprendre d'où vient cette demande de transparence, il faut nous pencher sur les possibles lieux d'intervention de systèmes à base de LLM sur les pratiques de recherche documentaire. 


// peut-être pas
//  Bien que certaines tâches soient toujours attendues comme relevant exclusivement de la production humaine, #cite(<gorraizAcknowledgingNewInvisible2025>, form: "prose") suggère que la "communauté invisible" — un concept proposé par Boyle pour décrire les réseaux collaboratifs de scientifiques du XVII#super("e") siècle — pourrait désormais inclure des technologies dites d'IA telles que les "assistants de recherche IA". 
// 
// 


==== Place des assistants de recherche IA dans la recherche documentaire


Les "assistants de recherche IA", sont des applications Web de récupération augmentée par génération (_Retrieval Augmented Generation_ ou RAG) @lewisRetrievalAugmentedGenerationKnowledgeIntensive2021. Autrement dit, il s'agit le plus souvent d'une couche applicative qui fonctionnellement agit comme un moteur de recherche dont la liste de résultats, les sources, sont synthétisées par un LLM. 

Ainsi, en plus des reflexions plus anciennes sur les biais algorithmiques associés à la sélection et la filtration de très vastes jeux de données et des algorithmes de recommandation @mertonMatthewEffectScience1968 @pariserFilterBubbleWhat2011 @cardonDansLespritPageRank2013, la plus-value de ces applications repose sur leur capacité interprétative, mêlant les tâches de sélection et d'interprétation des sources @finnShapingHistoryResponsibly2026. Ainsi, ces outils ne se limitent pas à la seule recherche d'information (RI) renvoyant au processus d'extraction d'une listes de résultats (de publications scientifiques en l'occurrence) à partir d'une requête. 


La place et la teneur des processus d'automatisation en jeux sont encore mal cernés par les communautés savantes. Sur la base des travaux de #cite(<tayWhatWeActually2025>, form: "prose") on identifie plusieurs lieux d'intervention de LLM dans ces nouveaux produits~:
// 1. Extraction ou création de métadonnées~: désambiguisation, extraction des mots-clés, génération d'un résumé. 
- Exploration de corpus~: mise en relations d’articles scientifiques, systèmes de recommandations. 
- Création et d'expansion de requête sur la base ou non de la requête en langue naturelle de l'utilisateur·ice @whiteBeliefsBiasesWeb2013. 
- Recherche d’information~: mise en relation entre la requête et des articles (plain texte ou métadonnées) par cosinus de similarité. 
- Classement des résultats (_Ranking_ ou _re-ranking_) qui peut être effectué par un LLM-as-judge.  
- Synthèse des sources extraites.

Les évaluations actuelles de ces outils montrent une opacité persistante, un rappel inégal et une tendance à survaloriser les travaux fortement cités @pattersonWhichAITools2025 @archambaultEvaluationCuttingEdgeAI2024. Dans le cadre de ce proejt de recherche, nous ne participerons cependant pas à l'évaluation ou à l'estimation la valeur utilitaire de ces outils afin de ne pas réduire leurs problématiques à des enjeux purement techniques. Car, au-delà des différences dans le choix du traitement de la requête, dans la présentation des résultats ou encore dans l'expérience utilisateur, ces outils ont plusieurs caractéristiques communes qui touchent au coeur de la recherche scientifique. 

Tout d'abord, ces outils sont présentés par les entreprises qui les vendent comme des équivalents humain, des assistants de recherche voire des co-auteurs. Le site d'Undermind par exemple a pour titre "Undermind: your AI co-researcher for the literature" (en octobre 2026). Ensuite, ces outils brouillent la distinction entre recherche, sélection, lecture et analyse des sources @finnShapingHistoryResponsibly2026 qui sont pourtant des activités cognitives distinctes et fondamentales à la recherche quelle que soit la discipline. Enfin, en générant des rapports qui s'apparentent à des états de l'art complets, ces "assistants de recherche IA" multiplient les transformations de nature interprétatives. 


// Or, #cite(<strzeleckiMyLastKnowledge2025>, form: "prose") montre que les publications contenant des traces évidentes de l'usage d'outils, cependant plus généralistes tels que ChatGPT, se contentent souvent d'un copier-coller de la réponse générée. On constate aussi un risque croissant de délégation cognitive @derewalEvaluatingLLMResearch2025. 

Dans ce contexte, comment concevoir des outils pour la recherche documentaire basés sur des technologies d'IA qui demeurent explicables pour les chercheur.ses~? Et surtout, comment valoriser l'agentivité dans le contexte de la recherche documentaire~?

// Pour répondre à ces questions, il convient de revenir sur la notion centrale de *découvrabilité* au cœur de la recherche documentaire et d'en cerner les liens avec la créativité.

==== Concevoir des alternatives

1. 
Dans la mesure où
- si on s'inscrit dans la logique que les données ne sont jamais données mais captées @druckerHumanitiesApproachesGraphical2011
- les programmes informatiques sont issus nécessairement d'un modèle représentationnel computable @meunierHumanitesNumeriquesModelisation2017 
- l'intérêt pour nous est de cerner la portée et le sens de cette modélisation. 


2. 
- les assistants de recherche IA entrent dans une logique qui est celle de la trouvabilité càd trouver ce que l'on sait déjà
- cette logique peut par ailleurs renforcer les biais de confirmation.
- or, la recherche documentaire et la recherche scientifique dans son ensemble repose sur des principes de découvrabilité qui mettent en jeu aussi la sérendipité, qui est la rencontre d'informations dont on ignorait l'existence. La sérendipité est à la fois processus et résultat de parcours exploratoires essentiels à l'innovation.


 3.
 nos propositions:
 - des outils qui ne sont pas des chatbots.
 - des outils qui placent au centre la souveraineté du Web et 
Face à la cooptation du terme d'agentivité par les entreprises de la Big Tech, il reste encore à concrétiser une modélisation épistémique qui mette en valeur l'agentivité entendue comme capacité de prise de décision, de réflexion et d'introspection autonome dans un positionnement qui est celui de l'indépendance des outils de production et de diffusion du savoir @barlowDeclarationIndependenceCyberspace1996. Cela va dans le sens de @chevillonAlgorithmesQueersPerturber2026 et de @cohnMyTiVoThinks2016 : il est possible de s'approprier un outil et de le dévoyer même dans une infrastruture capitaliste, surtout dans à partir d'une approche queer.
 
-   nous proposons de concevoir des outils dont l'appropriation  peut faire l'objet d'une exaptation @gouldExaptationMissingTerm1982 @andrianiExaptationSourceCreativity2016 càd un usage détourné des scénarios d'usage prévus par ses concepteur..ices @tchounikineAppropriatingTechnologyHow2025 
 - des outils dont l'objectif central est la 




Comme le soutient #cite(<tayReproducibilityInterpretabilityAcademic2025>, form: "prose"), le manque de transparence des systèmes contemporains de RI fondés sur les GML complique la capacité des utilisateur..ices à évaluer de manière critique les résultats, soulignant la nécessité d’approches mettant au premier plan l’agentivité des utilisateur..ices. 



== Contributions attendues
<contributions-attendues>


Cette recherche se donne ainsi pour objectifs de : 
- Comprendre les enjeux profonds sur la littérature scientifique des nouvelles fonctionnalités d'IA. Que signifie 'chercher' si l'on ne fait que trouver la réponse que l'on attend? Que reste-t-il alors de la sérendipité pourtant essentielle à la science  @batesDesignBrowsingBerrypicking1989 @erdelezInformationEncounteringIts1999? 
- Sensibiliser aux capacités et limitations des systèmes basés sur des grands modèles de langue par le prisme des études critiques de l'IA @goodladEditorsIntroductionHumanities2023 ~: appuyer les chercheur·ses, étudiant·es et professionnel·les de l'information dans le positionnement de leurs besoins et l'évaluation des discours institutionnels et commerciaux. 
- Développer des outils d'appui à la recherche qui portent une réflexion sur leur appropriation /* @dumasprimbaultDecouvrabiliteCommePrise2025*/@tchounikineAppropriatingTechnologyHow2025 et sur les technologies qui les sous-tendent @druckerPerformativeMaterialityTheoretical2013. 

Deux axes de projection se dégage de ces objectifs~:
- un axe littératie critique de l'IA centrée sur la définition des besoins de la part des chercheur..ses et membres des équipes éditoriales des revues savantes. La sensibilisation du public universitaire aux questions d’IA passe par la délimitation des points d’accroches, des risques et enjeux réels pour l’évaluation ddes systèmes d'IA et l’évaluation de ce que ces systèmes produisent. Cet axe répond à une demande croissante de guides et de méthodologie tant de la part du corps enseignant que des étudiant.e.s et des communautés larges associées à l'université (par ex. conseiller..es à la réussite). 
- un axe de conception d'outils ou fonctionalités mettant en jeu une forme d'automatisation de la cognition dans le processus de diffusion et de recherche de la connaissance. Ces outils se veulent une alternative épistémique aux outils propriétaires et à la naturalisation du phénomène de la "blank box" @tayBlankBoxProblem2026. Ces outils sont construits selon une modélisation qui vise à mettre en évidence l'influence possible d'un algorithme au lieu de la cacher à l'utilisateur..ice. Cette modélisation repose sur l'hybridation en chaîne de programme d'IA connexionistes et symbolistes. 

Face à la demande croissante de transparence de la part des chercheurs et chercheuses quant aux "assistants de recherche IA" et devant la demande d'alternatives concrètes aux entreprises de la Big Tech, ce projet propose des systèmes d'information explicites, révélant leurs algorithmes et biais et capables de recentrer la recherche documentaire sur le jugement humain. Ces alternatives ont un rôle crucial sur le plan épistémologique pour #highlight()[contrer l'uniformisation des outils d'interrogation des sources savantes vers des interfaces de clavardage]. 

Ce travail se trouve au coeur d'une réflexion à l'impact sociétal majeur: construire collectivement une littératie critique de l'IA passe par la déconstruction de la rhétorique de l'inévitabilité qui infuse le discours public. Ce projet concrétise le développement d'outils alternatifs souverains produits dans un cadre éthique réfléchi en adéquation avec l'exigence scientifique et la réalité des pratiques de recherche documentaire actuelles. 

== Méthodologie
<méthodologie>


Ce projet de recherche s'inscrit pleinement dans les Humanités Numériques et, en exploitant son cadre épistémologique, allie théorie et pratique. Le caractère intrinsèquement pluri-disciplinaire des HN @berraFaireHumanitesNumeriques2012 est propice à l'emprunt de méthodologies auprès d'autres disciplines. Dans le prolongement des HN, on trouve les Études Critique de l'IA (ECIA) qui émergent en 2023 autour notamment de la revue CriticalAI #footnote(link("https://read.dukeupress.edu/critical-ai/issue/1/1-2")). À l'instar de cette communauté, ce projet emprunte aux disciplines de la Human-Computer Interaction, des Library and Information Science en opérationalisant des techniques de Traitement Automatique des Langues Naturelles tout en conservant la dimension d'esprit critique revendiqué par les humanités @goodladEditorsIntroductionHumanities2023. 


Pour porter cette interdisciplinarité dans la production d'objet numérique, on s'appuiera sur la notion de performativité matérielle (_performative materiality_) élaborée par 
#cite(<druckerPerformativeMaterialityTheoretical2013>, form:"prose"). Drucker propose de concevoir des objets numériques à partir d'un #emph[ethos] DH, c'est-à-dire des outils qui servent à la fois d'instruments de recherche, de débat et d'espace d'engagement rhétorique (p.13). Elle enjoint à positionner l'objet numérique dans les conditions matérielles de son existence non seulement du point de vue de la conception de l'outil que dans sa "performance" par l'utilisateur..ice. L'objet numérique replacé dans son cadre interprétatif circonstantiel permet ainsi de cerner son mode de fonctionnement. L'objet numérique est ainsi compris dans un cycle de vie allant de la production à l'utilisation en passant par le contrôle et l'évaluation des ressources (laborale, environnementale, financière) nécessaire à sa mise en œuvre : ainsi, 
#quote(attribution: <druckerPerformativeMaterialityTheoretical2013>)[la matérialité d’un artefact est lue comme un instantané au sein de systèmes interdépendants et continus]. 

// Cette approche entre dans la continuité des propos de McCarty : 
// #quote(attribution: <mccartyHumanitiesComputing2005>)[computers as modelling machines and not knowledge jukebox]. #todo[ref outils de prod. conditionnent nos capacités]. 

// === Des outils pour une agentivité humaine

// Smith, R. C., Vangkilde, K. T., Kjærsgaard, M. G., Otto, T., Halse, J., & Binder, T. (Éds.). (2020). Design anthropological futures. Routledge, Taylor & Francis Group.

// @smithDesignAnthropologicalFutures2020

// dans la lignée du provotype @boerProvotypesParticipatoryInnovation2012



// t l’éloge du bug (MVR)

// revaloriser l'agentivité : 

// @bogostPersuasiveGames2010 : Bogost calls this new form “procedural rhetoric,” a type of rhetoric tied to the core affordances of computers: running processes and executing rule-based symbolic manipulation. He argues further that videogames have a unique persuasive power that goes beyond other forms of computational persuasion. Not only can videogames support existing social and cultural positions, but they can also disrupt and change those positions, leading to potentially significant long-term social change.

// Ces propos appliqués aux jeux vidéos font échos aux travaux de #cite(<jacksonRethinkingRepair2014>, form:"prose") 
//   - Rethinking repair (Steve Jackson) 

// Aussi, l'exaption @gouldExaptationMissingTerm1982 dans les espaces numériques @andrianiExploringDynamicsNovelty2021

// Donc de manière générale : l'apporpriation @tchounikineAppropriatingTechnologyHow2025

Mes travaux s'inscrivent dans une démarche de recherche cyclique commune aux Humanités Numériques: #highlight()[les phases de programmation alimentent une réflexion théorique] qui se trouve mise à l'épreuve dans une perspective didactique en conférence (présentations dans cinq conférences internationnales en Humanités Numériques en 2026) ainsi que dans des séries d'ateliers et de cours pédagogiques (notamment ateliers #link("https://debogue.ecrituresnumeriques.ca/", ["Qu'est-ce qu'IA?"]) à la Bibliothèque de Lettres et Sciences Humaines, et cours "Décrypter l'IA : fondements pour les SHS" au _Digital Humanities Summer Institute 2026_) à l'Université de Montréal.

#highlight()[Trois projets] portent cette démarche :
- [terminé] IEML-RS: un système de recommandation connecté au moteur de recherche spécialisé en SHS #link("https://isidore.science", "Isidore.science"), utilisant un langage de structuration sémantique pour construire des requêtes et visualiser l'impact des reformulations par GML
//  @schneiderAgentiviteEpistemiqueRecherche2026 @schneiderReclaimingEpistemicAgency2026, 
- [en cours] Exploration d'un réseau d'articles scientifiques selon le type de citations (neutre, accord, désaccord) privilégiant des aspects sémantiques qualitatifs aux nombres absolus de citations, 
- [en cours] Module visuel interactif de modifications des vecteurs de mots-clés dans l'espace latent d'un GML pour l'exploration de l'évolution des thématiques d'une revue.
// - [en cours] Enrichissement sémantique sur l'éditeur de texte Stylo spécialisé dans la rédaction et l'édition d'article scientifique : fonctionnalités d'ajout d'identifiant unique via l'API LINCS, création de connexion sur les relations du Linked Open Data.

#pagebreak()

== Structure du projet
<calendrier>
=== Calendrier du projet 

#box(stroke: 1pt, outset: 5pt)[
Légende des couleurs :\
*Réalisations principales*\
 #text(blue)[Activités de rayonnement]\
 #text(orange)[Rédaction]
]
#set highlight(fill:yellow.lighten(60%) )

#highlight()[Année 1] 
- *Scolarité* (Séminaire en Humanités Numériques, Séminaire sur la littérature numérique, Séminaire sur les théories modernes de la littérature, Bibliométrie, Intégration de systèmes d'IA, École d'été des HN) GPA 4.3
- *Développement et déploiement du plogiciel IEML-RS* 
- #text(blue)[2 séries d'ateliers sur l'IA (pour Revue3.0 et #link("https://debogue.ecrituresnumeriques.ca/", [débogue tes humanités]))]
- #text(blue)["Hybridation de l’IA et remise en question de l’utilisation générale et généraliste de l’IA" [Communication]. CSDH-SCHN 2025, Toronto. DOI: /10.5281/zenodo.15641286]
- #text(orange)[Définition du contexte et de la problématique]

#highlight()[Année 2] 
- *Reflexion théorique sur l'adoption massive des 'IA générative'*
  - #text(blue)[#link("https://revue30.org/evenements/atelier-automatisation-complexe-revues/", [Ateliers à destination des revues]) sur l'automatisation]
- Participation et coordination du colloque "Créativités artificielles : études critiques de l'IA"
- Cours DHSI : "L’IA décryptée : fondements techniques et enjeux en SHS" 
- #text(blue)[Communications à DH (1 article long), Humanistica (1 article long, 1 article court), CSDH-SCHN (1 article long, 1 poster), INKE (1 article court).]
- #text(orange)[Examen de synthèse : ancrage théorique et état de l'art] 
- Cours à DHSI
- Publications soumises~: 
- Compte-rendu de l'ouvrage #cite(<chevillonAlgorithmesQueersPerturber2026>, form:"full") dans _Humanités numériques_.
- Chapitre d'ouvrage collectif: #cite(<schneiderQuellePlacePour2027>, form:"full")
- Chapitre d'ouvrage collectif #cite(<finnCloakNaturalLanguage2027>, form:"full")
- #cite(<schneiderEnjeuxRepresentationDans2027>, form:"full")

#highlight()[Année 3] 
- *Développement d'un module de visualisation de réseaux d'articles  pour Érudit*
- Stage au CiTiUS (Espagne) sur la mise en relation de métadonnées par similarité de vecteurs.
- #text(orange)[Rédaction Chapitre 2 et 3]
- #text(blue)[Publications envisagées~:
  - Article dans le _Champs Numérique/Digital Studies_ sur la visualisation interactive des transformations d'un réseaux d'articles travers la manipulation de vecteurs de mots-clés.
  - Article dans _les Carnets du CRIHN_  sur le discours entourant les usages de l'IA.
  - Article dans une revue de communication sur les pratiques de découvrbilité des revues.]
#highlight()[Année 4]  
- Finalisation des projets en lien avec Revue3.0, passation
-  #text(blue)[Publications envisagées~:
- Article dans une revue d'Histoire de l'Art sur la réactivation d'une exposition sous forme d'un jeu de fiction interactive]
- #text(orange)[Rédaction Chapitre 1 et finalisation de la thèse]

 

=== Plan de la thèse 
<plan-de-la-thèse>

#set par(leading: 0.3cm, spacing: 0.3cm)

=== Plan de la thèse 
<plan-de-la-thèse>

#set par(leading: 0.3cm, spacing: 0.3cm)

*Introduction * : La recherche documentaire et l'IA

#set par(first-line-indent: 0.5cm, leading: 0.3cm, spacing: 0.3cm)

*Chapitre 1*~: La recherche documentaire scientifique <chap>

#set par(first-line-indent: 1cm, leading: 0.3cm, spacing: 0.3cm)

*1.1* Place de la recherche documentaire dans l’environnement de l’édition scientifique : des outils d’écriture aux moteurs de recherche 

*1.2* Enjeux de la recherche documentaire (ex:  bulle de filtre, concentration des citation, diversité et homogénéisation des sources)

*1.3* Découvrabilité des contenus scientifiques entre trouvabilité et
sérendipité

Transition: des nouvelles pratiques issues de nouveaux outils ? 
#set par(first-line-indent: 0.5cm, leading: 0.3cm, spacing: 0.3cm)

*Chapitre 2*~: Influence de l’IA sur la recherche documentaire

#set par(first-line-indent: 1cm, leading: 0.3cm, spacing: 0.3cm)

*2.1* Quelle IA ? Contextualisation historique 

*2.2* Insertion de systèmes d’automatisation pour la recherche documentaire scientifique~: RAG et systèmes agentiques

*2.3* Les nouveaux enjeux de l’IA pour la recherche documentaire : déguisement de l’utilisation, attribution autoriale, synthèse des sources \= interprétation.

Transition : comment concevoir de nouveaux outils ?

#set par(first-line-indent: 0.5cm, leading: 0.3cm, spacing: 0.3cm)


*Chapitre 3* : Propositions d'outils sans interaction en langue naturelle

*3.1* Exploration de vaste corpus~: exemple des graphes de réseaux pour Érudit

*3.2* Fonctionnalités pour la découvrabilité~: exemple d'IEML-RS pour Isidore.

*Conclusion* 

#pagebreak()


#show bibliography: set heading(numbering: "1.1", level: 2)
#bibliography("../../phd_udem.bib", style: "apa", group: none)
