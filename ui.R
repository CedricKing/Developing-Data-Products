library(shiny)

# Define UI for Project Shiny application
shinyUI(fluidPage(

  # Application title
  titlePanel("Let's Compute!"),

  sidebarLayout(
    sidebarPanel(
      helpText("Select X, the Operator and Y to compute its result."),

      sliderInput("X", 
        label = "X",
        min = 0, max = 100, value = 50),

      radioButtons("Operand",
        label = h3("Radio buttons"),
        choices = list("Add" = 1, "Substract" = 2, "Multiply" = 3, "Divide" = 4), selected = 1),
 
      sliderInput("Y", 
        label = "Y",
        min = 0, max = 100, value = 50)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      textOutput("text1")
    )
  )
))