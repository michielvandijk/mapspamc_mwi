#'========================================================================================================================================
#' Project:  mapspam2globiom_mwi
#' Subject:  Run model
#' Author:   Michiel van Dijk
#' Contact:  michiel.vandijk@wur.nl
#'========================================================================================================================================

############### SOURCE PARAMETERS ###############
source(here::here("scripts/01_model_setup/01_model_setup.r"))


############### RUN MODEL ###############
run_spam(param)


############### COMBINE ADM1 RESULTS ###############
combine_results(param)

