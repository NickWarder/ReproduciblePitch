#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)
library(aplpack)

server <- function(input, output) {
output$depth <- renderPlot({
    boxplot(quakes$depth~quakes$mag,data=quakes,main="Quake Data", xlab="Quake Magnitude", ylab="Quake Depth")
    abline(h = input$depth, col = "red")
  })
}

  
