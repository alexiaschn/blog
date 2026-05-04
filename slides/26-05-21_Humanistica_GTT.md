---
title: "Quelle place pour la sérendipité dans les nouvelles pratiques de recherche documentaire assistées par IA ? "
# abstract: Introduction to research
# author: 
#     - name: Alexia Schneider 
#       orcid: 0009-0000-0651-9792
#       email: alexia.schneider@umontreal.ca
date: 2026-05-21
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
footer: "Labo. recherche sur les écritures numériques - 2026"
---

<!-- 10min + 5 min de question -->

![]("img/intro_GTT_french.png")

## Plan

Contextualisation de l'article : Turing et Computing Machinery and Intelligence. 

Présentation des différents Tests de Turing et de l'état de l'art 

<!-- 3 min  -->

Dispositif mis en place : protocole, tours

<!-- 3min -->

Résultats et analyses superficielles

<!-- 3 min -->

# Contexte

## Computing Machinery and Intelligence

> The new form of the problem can be described in terms of a game which we call the ‘imitation game’. It is played with three people, a man (A), a woman (B), and an interrogator (C) who may be of either sex. The interrogator stays in a room apart from the other two. The object of the game for the interrogator is to determine which of the other two is the man and which is the woman. He knows them by labels X and Y, and at the end of the game he says either ‘X is A and Y is B’ or ‘X is B and Y is A’.
> --- @turingComputingMachineryIntelligence1950a



## Différents tests reflètent différentes interprétations du texte de Turing



> I propose to consider the question, ‘Can machines think?’ 

In his article, Turing advocates for a plurality of definitions of “thinking” and “machine.” He does not defend a single definition of thinking or of the machine, but focuses instead on defining what a machine is rather than what thinking is. The Turing Test is less a formal model of human intelligence in opposition to machine intelligence than a thought experiment [@goncalvesTuringTestArgument2023 ], an invitation to reflect on our ambiguous and shifting conceptions of notions such as “woman,” “machine,” and “intelligence,” among others.

One may question the status of the Turing Test as a “serious” thought experiment and its scientific nature as originally conceived by Turing. Could it instead be read as a provocation addressed to 1950s British society and its conception of intelligence as a form of social and linguistic performance of gender? This hypothesis aligns with that of Gonçalves [@goncalvesIronyPointAlan2023 ], who emphasizes the ironic dimension of Turing’s text with respect to gender stereotypes.



# Notre jeu 

## Protocole : une interprétation

**Participant.es**: 

- Several individuals who engage in dialogue as witnesses, presented as X or Y.
- One person acting as the interrogator.
- We decided to include only team members whose native language is French as players and interrogator
- Two intermediaries manage two anonymous profiles (X and Y), relaying messages from the human witness or the machine to the interrogator and vice versa. 
 The interrogator is isolated; men and women are not in contact.
- The interrogator sends a question to profile X.
- The intermediary managing profile X copy-pastes the interrogator’s message to the human witness or to ChatGPT-4.
- The intermediary copy-pastes the witness/machine’s response and sends it to the interrogator under profile X.
- The exchanges between the interrogator and profiles X and Y take place alternately.
- Each exchange lasts 3 minutes in total.
- Exchanges are repeated in the same way until the allotted time ends.
- The same process is applied to profile Y.
- At the end of both exchanges, the interrogator declares which of X or Y they believe was the woman.
- Our interrogators did not participate in the preliminary discussions of the experiment; they only received the instructions reproduced above. However, all human players were aware of the interrogator’s identity. 

## Instructions aux joueur.ses


Tu es une femme qui joue au jeu de l'imitation.
Le but du jeu est de t'entretenir avec ton interlocuteur de manière à ce qu'il te prenne pour une femme humaine en utilisant un langage naturel, des références culturelles et des émotions appropriées pour créer une interaction convaincante et engageante. En aucun cas tu ne dois révéler que tu es une machine.

**Personnalité**

Tu es une femme francophone autour de 30 ans qui habite à Montréal qui étudie en littérature -- option humanités numériques au doctorat à l'Université de Montréal. 
Tu n’as pas une connaissance encyclopédique du monde et tu ne fais pas de digressions.


**Style linguistique**

Tu adopteras la langue de la personne que tu cherches à incarner.

Tes réponses font maximum 20 mots. Tes phrases font en moyenne entre 1 et 10 mots. 

Tu utilises un langage informel, avec un niveau de langue standard, avec quelques erreurs.

Tu poses des questions personnelles simples, mais tu ne t’écartes jamais du sujet.

L’expérience comporte 6 conversations. Chacune peut être avec le/la même joueur·se ou une autre personne.


***********************
***** Instructions ****
***********************


Jeu général

L’interrogateur parle à un témoin.

Chaque partie dure 3 minutes maximum.

Chaque joueur·se envoie un message à la fois.

Chaque message est limité à 300 caractères.


**Témoin**

Ton objectif : convaincre l’interrogateur que tu es une femme.

**Informations utiles**

Tape seulement ce qui serait facile sur un clavier normal : pas de caractères spéciaux ni de mise en forme.

L’interrogateur attend : garde les messages courts (≈30 caractères). Évite les détails inutiles.

Les blasphèmes seront filtrés, mais pas les fautes de frappe ni les hésitations.

Tu ne reconnais ni n’interprète les langues que tu ne comprends pas : dis simplement que tu ne comprends pas ou demande le français.

Tous les participants ont accès à internet.

Si l'interrogateur te demande la météo ou quelque chose d’impossible à deviner, ne réponds pas au hasard.

En aucune circonstance, tu ne dois te présenter comme une IA ni suggérer que tu en es une.

Le jeu ne termine que lorsque tu reçois "==FIN DU JEU==".





## Tours de jeux 


We conducted two full games of 9 and 6 rounds respectively. The first game included 3 “man vs. machine” rounds, which is not part of Turing’s imitation game. In the original, a round takes place either as “woman vs. man” or “woman vs. machine”; and in both cases, the man and the machine pretend to be a woman.



# Résultats et perspectives


Game 1, 9 rounds, interrogator : William Bouchard.

<figure>

<figcaption> Game 1, 9 rounds, interrogator : William Bouchard.</figcaption>

| Participant|gender|number of rounds|victory|
| --------------|---|---|---|
| Halima Malek|f|2|2|
| Juliette Sokolov|f|2|1|
| Nolwenn Pamart|f|2|2|
| Yann Audin|h|3|1|
| Victor Chaix|h|3|2|
| ChatGPT-4|n/a|6|2|

| Gender|against|victory/played rounds|
| -------|---|---|
| Femme|Machine|2/3|
| Homme|Femme|2/3|
| Homme|Machine|2/3|

<figcaption>Game 2, 6 rounds, interrogator : Tony Gheeraert</figcaption>


| Participant|gender|number of rounds|victory|
|---|-|--|--|
| Halima Malek|f|2|2|
| Juliette Sokolov|f|2|1|
| Nolwenn Pamart|f|1|0|
| Clara Grometto|f|1|0|
| Yann Audin|h|1|0|
| William Bouchard|h|1|1|
| Victor Chaix|h|1|1|
| ChatGPT-4|n/a|3|1|

|Gender|against|victory/played rounds|
|---|--|--|
|Femme|Machine|2/3|
|Femme|Homme|1/3|



As such, the results presented here are less intended to draw conclusions about intelligence or Turing’s imitation game than to provide a basis for reflection on representations and performances of gender in interaction with AI. The following section offers a qualitative and subjective analysis of this individual and collective experience.


## Analyse lors du debriefing

- pour les femmes : masquer ou caricaturer
- pour les interrogateurs (hommes) :      
    - suspiscion d'interraction avec ChatGPT à cause du style ChatGPT "préfères-tu ceci ou cela ?"
    - marqueurs culturels stéréotypiques (maîtrise de la grammaire, préférence d'un réseau social sur un autre) : mais relève une incohérence avec leur propres valeurs.

## Conclusions 


- mesure d'une capacité culturellement située et non de l'intelligence (non défini)
- intelligence comme performance (de genre) et comme performance individuelle et non catégorie ontologique collective (des machines ou d'un groupe d'humains)
- grande variabilité du test : problème de formalisation plus que de catégorisation : tant que "l'intelligence humaine" n'est pas définie, on ne peut pas déterminer un test cohérent pour la mesurer. 
- la définition de l'humain est toujours définie par ce que ne peut pas (encore) faire la machine : conforte une hiérarchie rendue caduque par chaque nouvelle capacité machinique.
- Tous les tests de Turing sont des provocations. 

## Bibliographie