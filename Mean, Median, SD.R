library(tidyverse)
View(msleep)
mean(msleep$sleep_total)
median(msleep$sleep_total)
sd(msleep$sleep_total)
msleep %>%
  select(sleep_total) %>%
  summarise(Mean=mean(msleep$sleep_total),
            Median=median(msleep$sleep_total),
            SD=sd(msleep$sleep_total)) 
