# ui file for ShinyApp

library(shiny)
library(shinythemes)
library(markdown)
library(dplyr)
library(tm)

shinyUI(
  navbarPage("Next Word Predict",
             theme = shinytheme("spacelab"),
             tabPanel("Home",
                      fluidPage(
                        titlePanel("Home"),
                        sidebarLayout(
                          sidebarPanel(
                            textInput("userInput",
                                      "Enter a word or phrase:",
                                      value =  "",
                                      placeholder = "Enter text here"),
                            br(),
                            sliderInput("numPredictions", "Number of Predictions:",
                                        value = 1.0, min = 1.0, max = 3.0, step = 1.0)
                          ),
                          mainPanel(
                            h4("Input text"),
                            verbatimTextOutput("userSentence"),
                            br(),
                            h4("Predicted words"),
                            verbatimTextOutput("prediction1"),
                            verbatimTextOutput("prediction2"),
                            verbatimTextOutput("prediction3")
                          )
                        )
                      )
             )
  )   
)