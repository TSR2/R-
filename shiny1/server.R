library(shiny)
shinyServer(function(input,output){
  aaa=reactive({data.frame(name="ma",value=as.character(input$ma))
})
output$values=renderTable({aaa()})
})
