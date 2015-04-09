library(shiny)
mpgdata=mtcars
mpgdata$am=factor(mpgdata$am,labels=c("Automatic", "Manual"))

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
      formulatext=reactive({paste("mpg~",input$variable,sep="")})
      output$caption <- renderText({formulatext()})
      output$mpgplot=renderPlot({boxplot(as.formula(formulatext()),data=mpgdata,
                        outlier=input$outliers)})
})