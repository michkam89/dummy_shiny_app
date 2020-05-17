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
    #text input with a placeholder helps to save some space!!!
   textInput("name",label = NULL, placeholder = "Your name"),
   sliderInput("date", "when whould we deliver?",
               min = as.Date("2019-08-09"), max = as.Date("2019-08-16"),
               value = as.Date("2019-08-10")),
   #droptdown lists can be grouped
   selectInput("droplist", label = "Select input from groups",
               choices = list(
                 group1 = list(
                   "a", "b", "c",
                   "d", "e", "f"),
                 group2 = c("g", "h")
               )),
   #slider with animation! :)
   sliderInput("slider", label = NULL, min = 0, max = 100, step = 5, value = NULL,
               animate = animationOptions(loop = TRUE)),
   # when changes are small with small values we can add step that is higher
   numericInput("number", "Select a value", value = 150, min = 0, 
                max = 1000, step = 50)
)

# Define server logic required to draw a histogram
server <- function(input, output) {


}

# Run the application 
shinyApp(ui = ui, server = server)
