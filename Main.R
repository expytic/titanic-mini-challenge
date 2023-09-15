library("tidyverse")
library("tidymodels")
library("ggmosaic")
library("ggalluvial")
library("rpart")
library("rpart.plot")

source('survival_chances.R')
source('tickets.R')
source('model.R')

load_data = function()
{
  data <- read.csv("titanic_data.csv")
  data <- data %>% mutate(AnzahlFamilienmitglieder = SibSp + Parch)
  data <- data %>% mutate(Altersklasse = case_when(
    Age >= 18 ~ "Erwachsen",
    Age < 18 ~ "Kinder"
  ))
  return(data)
}

main = function()
{
  titanic_data <- load_data()
  glimpse(titanic_data)
  class_survival_chances(titanic_data)
  gender_age_survival_chances(titanic_data)
  price_survival_chances(titanic_data)

  tickets(titanic_data)

  simple_regression(titanic_data)
}