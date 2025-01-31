rm(list=ls());if(!("rstudioapi" %in% installed.packages()[,"Package"])){install.packages("rstudioapi")};require("rstudioapi");
setwd(dirname(rstudioapi::getActiveDocumentContext()$path));setwd("./")
getwd()
rstudioapi::isAvailable("0.99.149")


devtools::install_github("r-lib/devtools")
install.packages("reshape")

usethis::create_package("./cleaninginspectoR")
#
usethis::use_package("reshape",type = "Depends")
usethis::use_package("questionr",type = "Depends")
usethis::use_package("knitr",type = "Depends")
usethis::use_package("dplyr",type = "Depends")
usethis::use_package("tidyr",type = "Depends")
usethis::use_package("magrittr",type = "Depends")

library(roxygen2)
library(devtools)
library(survey)
library(dplyr)
library(magrittr)
library(questionr)

has_devel()
print(has_devel())

.onLoad <- function(libname, pkgname){
  packageStartupMessage("Welcome to a package that checks your data cleaning")
}

usethis::use_test()


print(rtools_path() )
has_rtools()
devtools::build()
devtools::load_all()
devtools::document()
devtools::test()
devtools::build_vignettes()


