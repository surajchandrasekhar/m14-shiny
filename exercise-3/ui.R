# ui.R
library(dplyr)
library(plotly)
library(shiny)
shinyUI(fluidPage(
  mainPanel(
    # Add a selectInput (with a proper id) that allows you to select a variable to map
    
    # Use plotlyOutput to show your map
    selectInput('mapvar', label='Variable to Map', choices = list("Population" = 'population', 'Electoral Votes' = 'votes', 'Votes / Population' = 'ratio')),
    plotlyOutput('map')
  )
))