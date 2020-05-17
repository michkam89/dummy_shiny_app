#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

ui <- fluidPage(
  fluidRow(
    splitLayout(cellWidths = c("50%", "50%"),  
                plotOutput("plot1"),plotOutput("plot2")))
)

server <- function(input, output, session) {
  output$plot1 <- renderPlot(plot(1:5), res = 96)
  output$plot2 <- renderPlot(plot(1:5), res = 96)
}


# Run the application 
shinyApp(ui = ui, server = server)
