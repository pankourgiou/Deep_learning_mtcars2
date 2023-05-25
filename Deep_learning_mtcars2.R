# Deep learning in R
# Loading the required packages
#Apply the deep learning package on the chosen dataset. Here, create a set of features for independent variables, and create the dependent variable.
library(mlbench)
library(deepnet)
data("mtcars")
  
# Clean off rows with missing data
mtcars = mtcars[which(complete.cases(mtcars)
                                  == TRUE),]
  
head(mtcars)
names(mtcars)
y = as.matrix(mtcars[, 11])
y[which(y == "mpg")] = 0
y[which(y == "cyl")] = 1
y = as.numeric(y)
x = as.numeric(as.matrix(mtcars[, 2:10]))
x = matrix(as.numeric(x), ncol = 9)
