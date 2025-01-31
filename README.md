# Formation Quarto
Michaël Delorme
2025-01-31

- [Objectif](#objectif)
- [Fichiers](#fichiers)
- [Construction](#construction)
- [Publication](#publication)
- [Méta](#méta)
  - [Dépôt Git](#dépôt-git)

## Objectif

Proposer des documents et des exercices avec leurs données pour une
découverte du système de publication [Quarto](https://quarto.org/) d’une
demi-journée dans le cadre du [parcours de formation R du
SSP](https://orion.agriculture/confluence/display/CER/Formation+R_Ressources),
possiblement en :

- présentiel, ou
- auto-formation.

## Fichiers

- La compilation de *formation_quarto.qmd* permet de produire la
  présentation *formation_quarto.html* (sous forme de diaporama
  reveal.js) ou un document HTML ou PDF.
- Les exercices sont préparés dans *exercices/exercices_quarto.qmd*,
  produisant les énoncés à distribuer *exercices_enonces_quarto.html*
  (ou en PDF) dans ce même répertoire, ainsi que les corrigés
  *exercices_corriges_quarto.\**.
- Les données des exercices sont présentes dans le répertoire *donnees*.
  Il s’agit d’un extrait aléatoire de 1000 exploitations du RA 2020 dont
  les lignes ont été mélangées par colonne pour secrétiser les données.
  Si besoin elles sont générées par *R/generer_donnees.R*.

## Construction

Les formateurs peuvent modifier leur nom et la date dans *\_quarto.yml*,
puis exécuter le code suivant pour générer tous les documents :

``` r
renv::restore()
source("R/generer_tout.R")
```

## Publication

Diaporama disponible sur
<https://ssm-agriculture.github.io/Formation-R-perf-03-quarto/>.

## Méta

Ce document est produit par :  
*C:/Users/michael.delorme/Documents/formations/formation_quarto/readme.qmd*

### Dépôt Git

Ce projet est versionné dans :  
<https://github.com/SSM-Agriculture/Formation-R-perf-03-quarto>
