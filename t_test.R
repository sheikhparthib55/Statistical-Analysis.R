library(tidyverse)
View(starwars)
my_data <- starwars %>%
  select(sex,height) %>%
  filter(sex %in% c("male","female")) %>%
  drop_na(height)

#is.na(),rm.na(),drop_na(), fct_na() egulo use kora hoy not available "na" value gulo bad deoar jonno

t.test(height~sex,data=my_data)
#Formula: t.test(numeric var~cat var,data=?)
#t_test: t.test(num var~cat var,data=?,paired=TRUE,conf_level=.95,_ _ _ _)
#Paired sample t_test: t.test(numeric var~cat var,data=?,paired=TRUE)

