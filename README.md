
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fishproject

<!-- badges: start -->

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
    |   |___text
    |   |___plots
    |
    |___make.R
    |
    |___.drake/
