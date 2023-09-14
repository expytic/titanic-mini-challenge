simple_regression = function(data)
{
  test_data = data %>% initial_split(prop = 3/4)
  model <- test_data %>% rpart(formula = Survived ~ Age + Fare + Pclass + Altersklasse, method = "anova")
  rpart.plot(model)
}