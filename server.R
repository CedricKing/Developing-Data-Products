library(shiny)

# Define server logic to compute and display the result.
shinyServer(function(input, output) {
  output$text1 <- renderText({ 
    if (input$Operand == "1")
      paste("The result of ", input$X, " add " , input$Y, " is ", input$X + input$Y, ".")
    else if (input$Operand == "2")
      paste("The result of ", input$X, " substract " , input$Y, " is ", input$X - input$Y ,".")
    else if (input$Operand == "3")
      paste("The result of ", input$X, " multiply " , input$Y, " is ", input$X * input$Y, ".")
    else if (input$Operand == "4")
      paste("The result of ", input$X, " divide by " , input$Y, " is ", input$X / input$Y, ".")
    else
      paste("Invalid selection")
  })
})