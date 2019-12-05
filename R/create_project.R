#' @title Set up R project
#' @description This function allows you to set up your R project structure with ease
#'
#' @param data Create folder called data? TRUE or FALSE
#' @param output Create folder called output? TRUE or FALSE
#' @param plots Create folder called plots in output? TRUE or FALSE
#' @param stan Use stan in this project? Create folder called stan? TRUE or FALSE
#' @param text Will this project contain text? Create folder called text? TRUE or FALSE
#' If TRUE and output is TRUE a folder output/text will be crated as well
#' @param drake Use drake structure for this project? TRUE or FALSE
#' @param rfiles Optional. A character vector with the names of r files to add
#' @param readme Add README.Rmd to project? TRUE or FALSE
#'
#' @return Creates structure based on settings
#'
#' @import usethis
#' @import here
#'
#' @export
#'
#' @examples
#' # create_project(stan = TRUE, rfiles = c("01_load", "02_analyze"))

create_project <- function(
  data = TRUE,
  output = TRUE,
  plots = TRUE,
  text = TRUE,
  stan = FALSE,
  drake = TRUE,
  rfiles = NULL,
  readme = TRUE
){


  if (readme){
    if (!file.exists("README.Rmd")){
      usethis::use_readme_rmd(open = FALSE)
      message("-> created README.Rmd")
    }
  }

  path <- here::here("R")
   if (!dir.exists(path)){dir.create(path)
     message("-> created R/")
     }


  if (data){
    path <- here::here("data")
     if (!dir.exists(path)){dir.create(path)
       message("-> created data/")
       }
  }

  if (output){
    path <- here::here("output")
     if (!dir.exists(path)){dir.create(path)
       message("-> created output/")
       message("-> created output/data")}
  }

  if (stan){
    path <- here::here("stan")
     if (!dir.exists(path)){dir.create(path)
       message("-> created stan/")
     }
  }

  if (text){
    path <- here::here("text")
     if (!dir.exists(path)){dir.create(path)
       message("-> created text/")}
  }

  if (text & output){
    path <- here::here("output/text")
     if (!dir.exists(path)){dir.create(path)
       message("-> created output/text/")
     }
  }

  if (plots & output){
    path <- here::here("output", "plots")
     if (!dir.exists(path)){dir.create(path)
       message("-> created plots/")
     }
  }

  if (drake){
    rfiles <- c("packages", "functions", "plan")
    silent <-
      lapply(rfiles, function(x){
      path <- here::here("R", paste0(x, ".R"))
       if (!file.exists(path)){file.create(path)
         message(paste0("-> created ", x, ".R"))
       }
    })
    path <- here::here("make.R")
     if (!file.exists(path)){file.create(path)
       message("-> created make.R")
     }
  }

  if (!is.null(rfiles)){
    silent <-
      lapply(rfiles, function(x){
        path <- here::here("R", paste0(x, ".R"))
         if (!file.exists(path)){file.create(path)
           message(paste0("-> created ", x, ".R"))
         }
      })
  }

}
