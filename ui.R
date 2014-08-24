library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Average NBA Player Stats Comparison"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
      
    helpText("NBA was created in 1946. From this year hundreds of players are creating a spirit",
             "of basketball (more than 400 a year). Explore the changing of average NBA player",
             "charactetistic during these years. You can choose height, weight, age & BMI. There",
             "is also a fuctionality to show newcommers (a.k.a rookies) separately."),
  
    selectInput("select", label = h5("Choose the dimension"), 
                choices = list("Height" = 1, "Weight" = 2,
                               "BMI" = 3, "Age" = 4), selected = 1),
    checkboxInput("rookies", "Show Rookies Separately", FALSE)
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("playersPlot")
  )
))
