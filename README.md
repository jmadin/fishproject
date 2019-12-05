
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fishproject

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/nschiett/fishproject.svg?branch=master)](https://travis-ci.org/nschiett/fishproject)
<!-- badges: end -->

The goal of fishproject is to create a general structure for your R
project

## Installation

You can install the released version of fishproject from github.

``` r
devtools::install_github("nschiett/fishproject")
```

## Example

``` r
library(fishproject)
## basic example code
create_project()
```

Creates a structure like this:

    myproject.Rproj
    |___data/
    |
    |___R/
    |   |___packages.R
    |   |___functions.R
    |   |___plan.R
    |
    |___text/
    |
    |___output/
    |   |___plots/
    |   |___data/
    |   |___text/
    |
    |___make.R
    |
    |___README.Rmd

``` r
library(fishproject)
## basic example code
create_project(text = FALSE, drake = FALSE,
               rfiles = c("1_load", "2_wrangle", "3_analyze"))
```

Creates a structure like this:

    myproject.Rproj
    |___data/
    |
    |___R/
    |   |___1_load.R
    |   |___2_wrangle.R
    |   |___3_analyze.R
    |
    |___output/
    |   |___plots/
    |   |___data/
    |
    |___README.Rmd
