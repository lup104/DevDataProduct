#
#Peggy Lu
#January 21, 2017
#
#client side script
#

library(shiny)


# Define UI for application 
shinyUI(fluidPage(
  # Application title
  titlePanel("Motor Trend Dataset - mtcars"),
  
  sidebarLayout(
    sidebarPanel(
          sliderInput("hp",
                  "Specify Minimum Horse Power",
                  min = 150,
                  max = 300, value =150), 
  
      #set default cylinder to be 8
      selectInput("cyl", "Cylinder Selection", c(4,6,8), selected=8)
      ),
    mainPanel(
      tabsetPanel(type="tab", 
                tabPanel("Data", tableOutput("data1")), 
                tabPanel("Plot",  plotOutput("plot1")),
                tabPanel("Model", verbatimTextOutput("fit"))
              )
    )
  )
))
