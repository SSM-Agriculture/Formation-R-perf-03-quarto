library(dplyr)
library(readr)
library(janitor)
library(fs)

dir_create("donnees")
set.seed(1618034)
read_rds("~/CERISE/03-Espace-de-Diffusion/030_Structures_exploitations/3020_Recensements/RA_2020/01_BASES DIFFUSION RA2020/DEF_240112/RA2020_EXPLOITATIONS_240112.rds") |> 
  as_tibble(.name_repair = make_clean_names) |> 
  slice_sample(n = 1000) |> 
  lapply(function(x) { sample(x) }) |> 
  as_tibble() |> 
  write_rds("donnees/ra_2020.rds")
