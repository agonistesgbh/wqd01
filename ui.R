library(shiny)
library(ggplot2)
library(readr)

all_wqgs <- read_csv("all_wqgs.csv")

fluidPage(
  
  titlePanel("BC Water Quality Guidelines"),
  h3('Judson B. Tunnell'),
  h4('https://www.linkedin.com/in/judsontunnell/'),
  
  sidebarPanel(
    
    h4('Water Quality Guidelines - Filtered by Use'),
    selectInput('Use', 'Filter by Use', unique(all_wqgs$Use)),
    h4('Scroll Down for TUV Fortran Data')
    
  ),
  
  mainPanel(
    h3('Water Quality Data'),
    dataTableOutput('table1'),
    h3('Data Extracted from TUV Fortran App'),
    dataTableOutput('table2')
  )
)