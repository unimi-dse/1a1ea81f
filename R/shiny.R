#' EconomicIndicatorsGUI
#'
#' Runs a Graphical User Interface to plot GDP, CPI and Unemployment Rate time series of 12 European Countries.
#'
#' Data span from 1983 to 2018.
#' Selected countries are: Austria, Belgium, Denmark, France, Germany, Ireland, Italy, Netherlands, Portugal, Spain, Sweden, UK.
#'
#' @return shiny app
#'
#' @export
EconomicIndicatorsGUI <- function(){

  shiny::runApp(system.file("shiny/EconomicIndicatorsGUI", package = "EconomicIndicators"))

}
