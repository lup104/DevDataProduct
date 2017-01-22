#
#Peggy Lu
#January 21, 2017
#
#server side script
#

library(shiny)


shinyServer(function(input, output){
  #display data based on input parameters in a table format
  output$data1 <- renderTable({
    subset(mtcars,mtcars$cyl==input$cyl &   mtcars$hp <= input$hp)  
    })  
  #plot data based on input parameters
  output$plot1 <- renderPlot({
    ds <-subset(mtcars,  mtcars$cyl==input$cyl &  mtcars$hp <= input$hp)
    plot(ds$wt, ds$mpg, xlab="Weight (1000 lbs)", ylab="Miles per Gallon", main="Weight Impact on MPG", pch=17)
    })
  #build the regression model using am, qsec and vs variables and filtered by the input parameters
  output$fit <-renderPrint({
    ds <-subset(mtcars,  mtcars$cyl== input$cyl & mtcars$hp <= input$hp)
    summary(lm(mpg~am+qsec+vs, ds))
    })
})
