library(tidyverse)
df <- iris
print("Head")
print("--------------------")
print(head(df))
print('-----------------------')
print("Tail")
print(tail(df))
print(str(df)) # structure of data
print(summary(df)) # summary of data
print("----------------------------------------------------")
print(quantile(df$mpg)) # quantile of data
print(summary(df)) 
print(df[1:3])
print(subset(df,Species == "versicolor"))
print(subset(df,Sepal.Length == 6.2))
print(aggregate(df$Sepal.Width,list(df$Sepal.Width),FUN = mean))

