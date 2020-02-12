#'INTERACTIVE UI:
ui<-shiny::fluidPage(


  shiny::titlePanel("MACROECONOMIC INDICATORS BY COUNTRY"),


  shiny::sidebarLayout(


    shiny::sidebarPanel(
      shiny::selectInput(inputId = "country", label = "Choose a Country",
                  choices=c("AUSTRIA","BELGIUM","DENMARK","FRANCE","GERMANY","IRELAND","ITALY","NETHERLANDS","PORTUGAL","SPAIN","SWEDEN","UNITEDKINGDOM")),
      shiny::selectInput(inputId = "indicator", label = "Choose an Indicator",
                  choices=c("UNEMPLOYMENT RATE","GDP","CPI"))
    ),


    shiny::mainPanel(
      shiny::plotOutput("indicator_plot")
    )
  )
)
