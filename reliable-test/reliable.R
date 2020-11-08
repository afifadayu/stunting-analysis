#installing library
install.packages("psych")
install.packages("dplyr")
library(psych)
library(dplyr) 

dataset <- read.csv(file.choose())
head(dataset)

x <- select(dataset,2:11)
x <- as.data.frame(x1)

psych::alpha(x, check.keys=TRUE)

#code and compiled by afifadayu