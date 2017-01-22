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
                tabPanel("Model", verbatimTextOutput("fit")),
                tabPanel("About", p("This application will display mtcars data based on the input parameters."),
                                   p("Users may choose to specify the minimum Horse Power (default to 150) by using the slider, 
                                    and choose the number of cylinders from the dropdown list (default to 8)"),
                                   p("Three output tabs are available:" ),
                                    p("-- The Data Tab: Display data in a table based on input parameters"),
                                    p("-- The Plot Tab: Graph the relationship between weight and mpg based on the specified horse power and cylinders"),   
                                    p("-- The Model Tab: Regression Model based on lm(mpg ~ am+qsec+vs) leveraging input parameters as criteria"
                                      )
                       
                       
                         )
                                   
              )
    )
  )
))
