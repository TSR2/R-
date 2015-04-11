library(shiny)
shinyUI(pageWithSidebar(
headerPanel("wwwwww"),
sidebarPanel(
  sliderInput("ma","ma:",min=0,max=1000,value=500)),
mainPanel(tableOutput("values"))
))