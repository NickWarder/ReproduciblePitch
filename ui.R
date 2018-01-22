#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      sliderInput("depth", "Depth of Quake:", min = min(quakes$depth) , max = max(quakes$depth), value = min(quakes$depth))
    ),
  mainPanel(plotOutput("depth")),
))
