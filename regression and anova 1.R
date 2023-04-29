rm(list = ls())
# Load the necessary packages
library(readxl)
library(dplyr)
library(ggplot2)
library(stats)

# Load the data
data <- read_xlsx("t1.xlsx")

# Select relevant independent variables

  
# Fit multiple linear regression model
model <- lm(data$`Dollar Sales Any Merch` ~data$`ACV Weighted Distribution Any Merch`  +data$`Price per Unit`  + 
            data$`Unit Sales Any Merch`   + data$Time  +data$Geography +data$brand, 
            data = data ) 

summary(model)

library(car)
anova_sales_geography <- aov(data$`Unit Sales Any Merch` ~ Geography, data = data)
summary(anova_sales_geography)

anova_sales_brand <- aov(data$`Unit Sales Any Merch` ~ brand, data = data)
summary(anova_sales_brand)
