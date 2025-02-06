library(quarto)

# données -----------------------------------------------------------------

source("R/generer_donnees.R")


# présentation ------------------------------------------------------------

quarto_render("formation_quarto.qmd", output_format = "revealjs")
quarto_render("formation_quarto.qmd", output_format = "html")
quarto_render("formation_quarto.qmd", output_format = "pdf")
# quarto_render("formation_quarto.qmd", output_format = "typst")


# énoncés et corrigés des exercices ---------------------------------------

# ils sont dans un sous-répertoire : les fichiers qu'ils utilisent (dans 
# donnees) sont cependant accédés comme depuis la racine car on a mis 
# `execute-dir: project` dans _quarto_yml

# corrigés
quarto_render("exercices/exercices_quarto.qmd", output_format = "html")
quarto_render("exercices/exercices_quarto.qmd", output_format = "pdf")
# quarto_render("exercices/exercices_quarto.qmd", output_format = "typst")

# Les énoncés n'affichent pas le code et les solutions car on change le `echo`
# avec enonces.yml
quarto_render("exercices/exercices_quarto.qmd", 
              metadata_file = "exercices/enonces.yml", output_format = "html")
quarto_render("exercices/exercices_quarto.qmd", 
              metadata_file = "exercices/enonces.yml", output_format = "pdf")


# lisez-moi ---------------------------------------------------------------

quarto_render("readme.qmd", output_format = "html")
quarto_render("readme.qmd", output_format = "gfm")


# publier sur github pages ------------------------------------------------

#system("quarto publish gh-pages formation_quarto.qmd")
