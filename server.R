library(shiny)
library(ggplot2)
library(readr)

function(input, output) {

  all_wqgs <- read_csv("https://catalogue.data.gov.bc.ca/dataset/85d3990a-ec0a-4436-8ebd-150de3ba0747/resource/6f32a85b-a3d9-44c3-9a14-15175eba25b6/download/all_wqgs.csv")
  

  data2 <- read.csv("usrout.txt", skip = 4, sep = "")
  

  output$table1 <- renderDataTable(subset(all_wqgs, (Use == input$Use)))
  
  output$table2 <- renderDataTable(subset(data2))
  
  
    
  
}