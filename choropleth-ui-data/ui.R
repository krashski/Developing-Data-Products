# ui.R

shinyUI(fluidPage(
    titlePanel("Choropleth Map of US Unemployment Rates, 1990-2013"),
    
    sidebarLayout(
        sidebarPanel(

            helpText("A choropleth map is a thematic map with areas that are 
                    shaded in proportion to the levels of the variable displayed 
                    on the map. It provides an easy way to visualize the level of 
                    variability within a geographic region."),

            HTML('</br>'),
            
            helpText("Step 1: Select a year to display"),
            selectInput("year", 
                        label = h5("Year:"),
                        choices = 1990:2013,
                        selected = 2013),

            helpText("Step 2: Select a state, or choose
                     'All States' to generate a national map"),                                    
            selectInput("state", 
                        label = h5("State:"),
                        choices = c('All States', states)),

            helpText("Step 3: Select the number of colors to display
                     on the map"),               
            sliderInput("num", 
                        label = h5("Colors:"), 
                        min = 1, max = 9, value = 7),              

            helpText("Step 4: Generate the choropleth map"),                                       
            HTML('</br>'),
            submitButton("Generate Map"),
            
            HTML('</br>'),
            HTML('</br>'),
            
            helpText(HTML("Data source: <a href='http://www.bls.gov/lau/'>
                            US Bureau of Labor Statistics</a>"))),
        
        mainPanel(plotOutput("map"))
    )
))
