gender_age_survival_chances = function(data)
{
  survival_data <- data %>% group_by(Sex, Age) %>% summarise(Survived = mean(Survived, na.rm = TRUE))
  survival_data %>% ggplot(aes(x=Age, y = Survived, colour = Sex)) + geom_point()
}

price_survival_chances = function(data)
{
  price_survive <- data %>% summarise(.by = Fare, Survived = mean(Survived, na.rm = TRUE))
  price_survive %>% ggplot(aes(x=Fare, y = Survived)) + geom_point()
}

class_survival_chances = function(data)
{
  class_survive <- data %>% group_by(Pclass) %>% summarise(Survived = mean(Survived, na.rm = TRUE))
  
  class_survive %>% ggplot(aes(x=Pclass, y=Survived, fill=as.factor(Pclass))) + 
    geom_bar(stat = "identity") +
    scale_fill_brewer(palette = "Set1") +
    theme(legend.position="none")
  
}
