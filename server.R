library(shiny)

shinyServer(
  function(input,output){
    output$salesprice <- renderText({input$salesprice})
    output$weight <- renderText({input$weight})
    output$price <- renderText({as.numeric(input$salesprice)/as.numeric(input$weight)*1000})
  }
  )