library(tidyverse)
View(msleep)
my_data <- msleep %>%
  select(vore,sleep_rem) %>%
  drop_na()

mod1 <- aov(sleep_rem~vore,data=my_data)
summary(mod1)

#IN just one step
msleep %>%
  select(vore,sleep_rem) %>%
  drop_na() %>%
  aov(sleep_rem~vore,data=.) %>%
  summary()

