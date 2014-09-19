library(shiny)

# Define UI for application that gives two frame for goods price and weigt input
shinyUI(fluidPage(
  # Application title
  headerPanel("Calculate price per kilo goods"),
  sidebarPanel(
    textInput(inputId="salesprice",label="sale price /euro"),
    textInput(inputId="weight",label="Weight /g"),
    helpText("Hints: Sometimes we need to compare the prices of goods in the supermarket, but they are somehow not standarlized. For example, a piece of meat is sold at 4 euros with a weight of 300g. So now you should enter 4 in the sales price and enter 300 in the weight as inputs. At last this app will give you the price per kilo meat, which is very clear for you to compare with another piece of meat. Note: the unit of weight is gram!")
    ),
  mainPanel(
    p('Sales price /euro entered:'),
    textOutput('salesprice'),
    p('Weights /g entered:'),
    textOutput('weight'),
    p('price per kilogram:'),
    textOutput('price') 
    )
    
  )  
)