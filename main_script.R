iris_data <- iris

library(dplyr)
library(ggplot2)

library(dplyr)
library(ggplot2)
library(readr)

# reading data
iris_data <- read_csv('raw_data/iris.csv')

# subsetting data
setosa_subset <- iris_data |>
  filter(Species == "setosa")

# cool analysis
attach(setosa_subset)

model_setosa <- lm (Sepal.Length ~ Petal.Length, data = setosa_subset)
