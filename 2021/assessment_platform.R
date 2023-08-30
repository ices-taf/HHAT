require(lattice)
require(grid)
require(rmarkdown)
require(dplyr)
require(data.table)

series <- commandArgs(trailingOnly = TRUE)[1]
compartment <- commandArgs(trailingOnly = TRUE)[2]

load("assessment_platform.RData")

render(
  output_file = paste(gsub(" ", "_", series), "__", gsub(" ", "_", compartment), "__2021", ".html", sep = ""),
  output_dir = "html",
  "assessment_platform.Rmd",
  params = list(
    compartment = compartment,
    series = series
  )
)

#Use this for executing
if (FALSE) {
  #    series = "Finland_west Norrskär CD Clupea harengus LI",
  # params <- list(
  
  # series = "series = "Finland_west Norrskär CD Clupea harengus LI",
  #  compartment = "biota"
  #)
  
  #  rm(params)
  render(
    "assessment_platform.Rmd",
    params = list(
      compartment = "biota",
      series = "Finland_west Norrskär CD Clupea harengus LI"
    )
  )
}