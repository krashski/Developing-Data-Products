# server.R

shinyServer(
      function(input, output) {

        # create reactive expressions for inputs
        year <- reactive({
            as.numeric(input$year)
        })  

        state <- reactive({
            input$state
        })  
        
        counties <- reactive({
            input$counties    
        })
        
        num <- reactive({
            input$num
        })
        
        # create the map  
        output$map <- renderPlot({

            # show a progress message when plotting a new map
            progress <- shiny::Progress$new()
            on.exit(progress$close())
            progress$set(message = "Plotting map...", value = 0)             
            
            # plot the appropriate map depending on the input variables
            if (state() == 'All States') {
                # 'All States' map 
                county_unemployment_choropleth(year(), buckets = num())

            } else {    
                # State map
                county_unemployment_choropleth(year(), buckets = num(), 
                                               zoom = state())
            }
         })
     }
)
