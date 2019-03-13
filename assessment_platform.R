.libPaths("bootstrap/library")

require(lattice)
require(grid)
require(rmarkdown)
require(dplyr)
require(data.table)

series <- commandArgs(trailingOnly = TRUE)[1]

load("assessment_platform.RData")

render(output_file = paste(gsub(" ", "_", series), ".html", sep = ""),
       "assessment platform.Rmd",
       params = list(
         compartment = "biota",
         series = series)
)
