library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    textInput("user_name", "What's your name?"),
    textOutput("greeting"),
    numericInput("age", "How old are you?",value = 1L),
    textOutput("offence")
    
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    output$greeting <- renderText({
      paste0("Hello ", input$user_name)
    })
    
    output$offence <- renderText({
      paste(input$age, "?! You're old...")
    })

}

# Run the application 
shinyApp(ui = ui, server = server)
