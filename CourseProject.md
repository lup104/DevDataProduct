Developing Data Products Course Project - mtcars 
========================================================

Peggy Lu  
January 22, 2017

========================================================

Summary

Based on the Motor Trend dataset (mtcars), the assignment is to create a Shiny application with the following requirements:
  - some form of input widgets  
  - perform operation in sever.R based on the ui.R input  
  - display output from server calculation  
  - deploy it on Rstudio's servers  


Use Rstudio Presenter to prepare a reproducible pitch presentation about this application

========================================================
About the Data

The mtcars dataset contains 32 observations with 11 variables. 


```r
str(mtcars)
```

```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```
  
========================================================
About the Application 

There are two input parameters:
- Minimum Horse Power slider 
- Drop-down List for Number of cylinders

There are 3 Output Tabs filtered by the input parameters
- Data: Display the data result in a table format
- Plot:  Graph the relationship between weight and mpg 
- Model:  Regression Model based on lm(mpg~am+qsec+vs)



========================================================

Links

The Shiny Application:    
https://lup104.shinyapps.io/DevDataProduct/

The Application Source Code (server.R and ui.R):  
https://github.com/lup104/DevDataProduct  



