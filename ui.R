shinyUI(
        pageWithSidebar(
                headerPanel("Body Mass Index"),
        
                
                sidebarPanel(
                        h4('To find out your Body Mass Index,'),
                        h4('please enter your hight and weight and press Submit:'),
                        numericInput("iHight", "Hight in inches:", 68, min = 48, max = 84, step = 1),
                        numericInput("iWeight", "Weight in pounds:", 150, min = 60, max = 600, step = 1),
                        submitButton('Submit')
                ),
  
        
        
        mainPanel(
                h4('Results:'),
                p('You entered this hight [in inches]:'),
                verbatimTextOutput("oHight"),
                p('You entered this weight [in pounds]:'),
                verbatimTextOutput("oWeight"),
                
                h4 ('Your Body Mass Index [in lbs/in^2 is:'),
                verbatimTextOutput("oPrediction"),
                
                #iPrediction <- as.numeric(output$oPrediction),
                
                h4('Clinical Interpretation: according to the World Health Organization'),
                HTML
                ("<table border=1>
                        <tbody><tr>
                        <th>Category</th>
                        <th>BMI range</th>
                        </tr>
                        <tr>
                        <td>Very severely underweight</td>
                        <td>less than 15</td>
                        </tr>
                        <tr>
                        <td>Severely underweight</td>
                        <td>from 15.0 to 16.0</td>
                        </tr>
                        <tr>
                        <td>Underweight</td>
                        <td>from 16.0 to 18.5</td>
                        </tr>
                        <tr>
                        <td>Normal (healthy weight)</td>
                        <td>from 18.5 to 25</td>
                        </tr>
                        <tr>
                        <td>Overweight</td>
                        <td>from 25 to 30</td>
                        </tr>
                        <tr>
                        <td>Obese Class I (Moderately obese)</td>
                        <td>from 30 to 35</td>
                        </tr>
                        <tr>
                        <td>Obese Class II (Severely obese)</td>
                        <td>from 35 to 40</td>
                        </tr>
                        <tr>
                        <td>Obese Class III (Very severely obese)</td>
                        <td>over 40</td>
                        </tr>
                        </tbody>
                        </table>")
                
                
                )
        ))