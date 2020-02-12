#SHINY SERVER FUNCTION:
server<-function(input,output){

    #'DATA CLEANING:
    #' Assigning UNEMPLOYMENT RATE dataset to the first data.frame
    unrate_data_frame<-data.frame(EconomicIndicators::UNEMPLOYMENT_RATE)


    #'Assigning CPI dataset to the second data.frame
    cpi_data_frame<-data.frame(EconomicIndicators::CPI)


    #'Assigning GDP dataset to the third data.frame
    gdp_data_frame<-data.frame(EconomicIndicators::GDP)


    #'Converting UNEMPLOYMENT RATE dataset's "DATE" column to Date format
    dates<-as.Date(unrate_data_frame$DATE, format="%Y-%m-%d")


    #Reactive plot
    output$indicator_plot<-shiny::renderPlot({


        #if the indicator "UNEMPLOYMENT RATE" is chosen
        if(input$indicator=="UNEMPLOYMENT RATE"){
            #'Plot UNEMPLOYMENY_RATE dataset
            ggplot2::ggplot(EconomicIndicators::UNEMPLOYMENT_RATE, ggplot2::aes(x=dates, y=unrate_data_frame[,input$country]))+
                ggplot2::geom_line()+
                ggplot2::labs(title="UNEMPLOYMENT RATE",x="YEARS", y="UNEMPLOYMENT RATE(%)")


        #else if the indicator "GDP" is chosen
        } else if(input$indicator=="GDP"){
            #'Plot GDP dataset
            ggplot2::ggplot(EconomicIndicators::GDP, ggplot2::aes(x=dates, y=gdp_data_frame[,input$country]))+
                ggplot2::geom_line()+
                ggplot2::labs(title="GROSS DOMESTIC PRODUCT",x="YEARS", y="GDP(CURRENT USD HUNDREDS OF BILLIONS)")


        #else if the indicator "CPI" is chosen
        } else if(input$indicator=="CPI"){
            #'Plot CPI dataset
            ggplot2::ggplot(EconomicIndicators::CPI, ggplot2::aes(x=dates, y=cpi_data_frame[,input$country]))+
                ggplot2::geom_line()+
                ggplot2::labs(title="CONSUMER PRICE INDEX",x="YEARS", y="CPI(INDEX2015=100)")
        }
    })
}
