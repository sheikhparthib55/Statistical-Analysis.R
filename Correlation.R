library(tidyverse)
View(msleep)
msleep %>%
  drop_na(brainwt) %>%
  summarise(Correlation=cor.(sleep_total,brainwt))

#Another way
cor.test(msleep$sleep_total, msleep$brainwt, use = "complete.obs")
#
cor(msleep$sleep_total, msleep$brainwt, use = "complete.obs")

