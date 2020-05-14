

library(shiny)

library(ggplot2)
datasets <- data(package = "ggplot2")$results[, "Item"]

ui <- fluidPage(
    selectInput("dataset", "Dataset", choices = ls("package:datasets")),
    verbatimTextOutput("summary"),
    plotOutput("plot")
)

server <- function(input, output, session) {
    dataset <- reactive({
        get(input$dataset, "package:ggplot2")
    })
    output$summary <- renderPrint({
        summary(dataset())
    })
    output$plot <- renderPlot({
        plot(dataset())
    }, res = 96)
}

# Run the application 
shinyApp(ui = ui, server = server)
