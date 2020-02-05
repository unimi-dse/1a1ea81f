#'DATA CLEANING:
#'
#' Assigning UNEMPLOYMENT RATE dataset to the first data.frame
unrate_data_frame<-data.frame(UNEMPLOYMENT_RATE)


#'Assigning CPI dataset to the second data.frame
cpi_data_frame<-data.frame(CPI)


#'Assigning GDP dataset to the third data.frame
gdp_data_frame<-data.frame(GDP)


#'Converting UNEMPLOYMENT RATE dataset's "DATE" column to Date format
dates<-as.Date(unrate_data_frame$DATE, format="%Y-%m-%d")


#'Deleting the DATE column from the first data.frame
unrate_data_frame$DATE<-NULL

#'SHINY INTERACTIVE UI:
#'
ui<-shiny::fluidPage(


  shiny::titlePanel("Macroeconomic indicator by country"),


  shiny::sidebarLayout(


    shiny::sidebarPanel(
      shiny::selectInput(inputId = "country", label = "Choose a Country",
                  choices=colnames(unrate_data_frame)),
      shiny::selectInput(inputId = "indicator", label = "Choose an Indicator",
                  choices=c("UNEMPLOYMENT RATE","GDP","CPI"))
    ),


    shiny::mainPanel(
      shiny::plotOutput("indicator_plot")
    )
  )
)
