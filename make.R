#' @title cleaner: Automatically Detect Duplicated Bibliographic References
#' 
#' @description 
#' Automatically detects duplicated bibliographic references using the package 
#' 'revtools'. First reads BiBTeX file(s) and then adds an identifier to 
#' references: duplicated references will have the same identifier.
#' 
#' @author Nicolas Casajus \email{nicolas.casajus@fondationbiodiversite.fr}
#' 
#' @date 2021/07/22



## Install project manager package ----

if (!requireNamespace("rcompendium", quietly = TRUE)) {
  install.packages("rcompendium")
}


## Update required dependencies (listed in DESCRIPTION) ----

rcompendium::add_dependencies(compendium = ".")


## Install missing dependencies (listed in DESCRIPTION) ----

devtools::install_deps(upgrade = "never")


## Load project addins (R functions and packages) ----

devtools::load_all()


## Run Project ----

source(here::here("analyses", "detect-duplicates.R"))
