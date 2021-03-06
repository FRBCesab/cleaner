
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cleaner

<!-- badges: start -->

[![License: GPL (>=
2)](https://img.shields.io/badge/License-GPL%20%28%3E%3D%202%29-blue.svg)](https://choosealicense.com/licenses/gpl-2.0/)
[![Dependencies](https://img.shields.io/badge/dependencies-5/119-orange?style=flat)](#)
<!-- badges: end -->

Research compendium to automatically detects duplicated bibliographic
references using the package [revtools](https://revtools.net/).

### Content

This repository is structured as follow:

-   [`data/`](https://github.com/FRBCesab/cleaner/tree/master/data):
    contains all raw data required to perform analyses

-   [`analyses/`](https://github.com/FRBCesab/cleaner/tree/master/analyses/):
    contains R scripts to run each step of the workflow

-   [`outputs/`](https://github.com/FRBCesab/cleaner/tree/master/outputs):
    contains all the results created during the workflow

-   [`DESCRIPTION`](https://github.com/FRBCesab/cleaner/tree/master/DESCRIPTION):
    contains project metadata (author, date, dependencies, etc.)

-   [`make.R`](https://github.com/FRBCesab/cleaner/tree/master/make.R):
    master R script to run the entire project by calling each R script
    stored in the `analyses/` folder

### Usage

Clone the repository, open the `.Rproj` file in RStudio and run:

``` r
source("make.R")
```

### Notes

-   All required packages, listed in the `DESCRIPTION` file, will be
    installed (if necessary)
-   All required packages and R functions will be loaded
-   Some analyses listed in the `make.R` might take time
