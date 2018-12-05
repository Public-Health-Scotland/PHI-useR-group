library(shiny)
library(dplyr)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
   
  output$distPlot <- renderPlot({
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    
    # draw the histogram with the specified number of bins
    p <- ggplot(faithful, aes(waiting)) +
      geom_histogram(fill = "indianred3", color = "black", bins = input$bins) +
      labs(x = "Waiting Time") +
      theme_bw()
    p
  })
  
  output$eruptPlot <- renderPlot({
      dat <- faithful %>%
        mutate(bins = cut(waiting, breaks = input$bins)) %>%
        group_by(bins) %>%
        summarize(avg = mean(eruptions)) 
      
      ggplot(dat, aes(bins, avg)) +
        geom_bar(stat = "identity", fill = "lightsteelblue3", color = "black") +
        labs(x = "Waiting Time (in Minutes)",
             y = "Mean Length of Eruption") +
        theme_bw() +
        theme(axis.text.x = element_text(angle = 40, hjust = 1))
  })
})
