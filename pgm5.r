library(datasets)
data("iris")
str(iris)
library(caret)
set.seed(100)
ind <- createDataPartition(iris$Species,p=0.80,list = F)
train <- iris[ind,]
test <- iris[-ind,]
dim(train)
dim(test)

library(psych)
pairs.panels(train[,-5],gap=0,bg=c("red","blue","yellow")[train$Species],
             pch=21)
pc <- prcomp(train[,-5],center = T,scale. = T)
pc
summary(pc)
pairs.panels(pc$x,gap=0,bg=c("red","blue","yellow")[train$Species],
             pch = 21)

