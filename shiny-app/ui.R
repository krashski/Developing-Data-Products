# ui.R

shinyUI(fluidPage(
    titlePanel("Choropleth Map of US Unemployment Rates 1990-2013"),
    
    sidebarLayout(
        sidebarPanel(
            helpText("Based on data collected by the 
                     US Bureau of Labor Statistics"),

            selectInput("year", 
                        label = h5("Please select a year:"),
                        choices = 1990:2013,
                        selected = 2013),
            
            sliderInput("num", 
                         label = h5("Number of Colors on Map:"), 
                         min = 1, max = 9, value = 7), 
        
            selectInput("state", 
                        label = h5("(Optional): Please select a state:"),
                        choices = c(Choose='', state.regions)), 

            submitButton("Update Map")),
        
        mainPanel(plotOutput("map"))
    )
))
