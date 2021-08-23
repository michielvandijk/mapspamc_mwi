#'========================================================================================
#' Project:  MAPSPAMC
#' Subject:  Setup model
#' Author:   Michiel van Dijk
#' Contact:  michiel.vandijk@wur.nl
#'========================================================================================

# NOTE -----------------------------------------------------------------------------------
# This script below is sourced by all the other scripts in the data repository.
# In this way, you only have to set the SPAMc parameters once.
# It also ensures that the necessary packages (see below) are loaded.

# SETUP R --------------------------------------------------------------------------------
# Install and load pacman package that automatically installs R packages if not available
if(!require(pacman)) install.packages("pacman")
library(pacman)

# Load key packages
p_load(mapspamc, countrycode, gdalUtilities, here, glue, raster, readxl, tidyverse, sf)

# R options
options(scipen=999) # Suppress scientific notation
options(digits=4) # limit display to four digits


# SETUP MAPSPAMC -------------------------------------------------------------------------
# Set the folder where the model will be stored
# Note that R uses forward slashes even in Windows!!
spamc_path <- "C:/Users/dijk158/OneDrive - Wageningen University & Research/data/mapspamc_iso3c/mapspamc_mwi"
raw_path <- "C:/Users/dijk158/OneDrive - Wageningen University & Research/data/mapspamc_db"
gams_path <- "C:/MyPrograms/GAMS/win64/24.6"

# Set SPAMc parameters
param <- spam_par(spam_path = spamc_path,
                  raw_path = raw_path,
                  gams_path = gams_path,
                         iso3c = "MWI",
                         year = 2010,
                         res = "30sec",
                         adm_level = 2,
                         solve_level = 0,
                         model = "max_score")

# Show parameters
print(param)

# Create SPAMc folder structure in the spamc_path
create_spam_folders(param)


