library(shiny)

BMI <- function(iHight, iWeight) (iWeight/iHight^2)*703


shinyServer(
        function(input, output) {
                output$oHight <- renderPrint({input$iHight})
                output$oWeight <- renderPrint({input$iWeight})
                output$oPrediction <- renderPrint({BMI(input$iHight, input$iWeight)})
                
                #output$oInterp <- renderPrint({
                        #if (input$iPrediction < 16) "Severe Underweight"
                        #else (output$prediction >= 16) | (output$prediction < 18.5) "Underweight"
                        #else (output$prediction >= 18.5) && (output$prediction < 25) "Normal Weight"
                        #else (output$prediction >= 25 | < 30) "Overweight"
                        #else (output$prediction >= 30 | < 35) "Moderate Obesity"
                        #else (output$prediction >= 35 | < 40) "Severe Obesity"
                        #else (output$prediction > 40) "Morbid Obesity"
                        
               # })
                
                
                
        }
        )