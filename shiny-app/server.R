# server.R

shinyServer(
      function(input, output) {

        output$map <- renderPlot({

            # show a progress message when plotting a new map
            progress = shiny::Progress$new()
            on.exit(progress$close())
            progress$set(message = "Plotting map...", value = 0)             
            
            year = as.numeric(input$year)
            
            county_unemployment_choropleth(year, buckets = input$num, 
                                           zoom = NULL)
          
         })
     }
)
