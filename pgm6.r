dat <- iris
dat$size <- ifelse(dat$Sepal.Length < median(dat$Sepal.Length), "small", "big")
table(dat$Species, dat$size)
library(ggplot2)
ggplot(dat) +
  aes(x = Species, fill = size) +
  geom_bar() +
  scale_fill_hue() +
  theme_minimal()
test <- chisq.test(table(dat$Species, dat$size))
test
test$statistic 
test$p.value 
summary(table(dat$Species, dat$size))
# third method:

library(vcd) 
assocstats(table(dat$Species, dat$size)) 
test$observed
test$expected

