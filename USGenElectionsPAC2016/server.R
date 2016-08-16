library(shiny)

p1<- read.csv("pac.csv", sep = ",", header = T)

p1$NAME <- as.character(p1$NAME)
p1$CAND_NAME <- as.character(p1$CAND_NAME)

options(scipen = 10)


shinyServer(
        function(input, output) {
                
                dataInput <- reactive({
                        
                })
                
                output$plot <- renderPlot({
                        
                        ##par(mar=c())
                        
                        par(mar=c(15,6,4,2))
                        
                        barplot(p1[ which(p1$NAME==input$polactcom),]$TRANSACTION_AMT,
                                width = 1,
                                las = 3,
                                main=input$polactcom,
                                axisnames = TRUE,
                                cex.names = .9,
                                names.arg = p1[ which(p1$NAME==input$polactcom),]$CAND_NAME,
                                col = c("red", "white", "blue"),
                                ylab="Funds Raised in 2016 in $")

                                        })
                
        }
)
