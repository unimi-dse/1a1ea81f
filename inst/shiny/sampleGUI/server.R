#'DATA CLEANING:
#'
#' Converting CPI dataset's "DATE" column to Date format
dates<-as.Date(CPI$DATE, format="%Y-%m-%d")


#'Assigning CPI dataset to the first data.frame
cpi_data_frame<-data.frame(CPI)


#'Assigning GDP dataset to the second data.frame
gdp_data_frame<-data.frame(GDP)


#'Assigning UNEMPLOYMENT_RATE dataset to the third data.frame
unrate_data_frame<-data.frame(UNEMPLOYMENT_RATE)


#SHINY SERVER FUNCTION:
server<-function(input,output){


    #Reactive plot
    output$indicator_plot<-shiny::renderPlot({


        #if the indicator "UNEMPLOYMENT RATE" is chosen
        if(input$indicator=="UNEMPLOYMENT RATE"){
            #'Plot UNEMPLOYMENY_RATE dataset
            ggplot2::ggplot(UNEMPLOYMENT_RATE, ggplot2::aes(x=dates, y=unrate_data_frame[,input$country]))+
                ggplot2::geom_line()+
                ggplot2::labs(title="UNEMPLOYMENT RATE",x="YEARS", y="UNEMPLOYMENT RATE(%)")


        #else if the indicator "GDP" is chosen
        } else if(input$indicator=="GDP"){
            #'Plot GDP dataset
            ggplot2::ggplot(GDP, ggplot2::aes(x=dates, y=gdp_data_frame[,input$country]))+
                ggplot2::geom_line()+
                ggplot2::labs(title="GROSS DOMESTIC PRODUCT",x="YEARS", y="GDP(CURRENT USD BILLIONS)")


        #else if the indicator "CPI" is chosen
        } else if(input$indicator=="CPI"){
            #'Plot CPI dataset
            ggplot2::ggplot(CPI, ggplot2::aes(x=dates, y=cpi_data_frame[,input$country]))+
                ggplot2::geom_line()+
                ggplot2::labs(title="CONSUMER PRICE INDEX",x="YEARS", y="CPI(INDEX2015=100)")
        }
    })
}
