# Spliting Data -----------------------------------------------------------
## This script illustrates the technique used to split data into 70% training data and 30% test data Machine Learning

## Import libraries that will be used in this script
library(tidyverse)
library(caret)

#Load data set
library(readr)
diabetes <- read_csv("diabetes.csv")
View(diabetes)

# split data into training and test
set.seed(123)
training.sample<- diabetes$Outcome %>%
  createDataPartition(p=0.5, list=FALSE)

train.data <- diabetes[training.sample, ]
test.data<- diabetes[-training.sample, ]
