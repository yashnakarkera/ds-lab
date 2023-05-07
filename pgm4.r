library(datasets)
data(iris)
summary(iris)
plot(iris)
print(cor(iris[, 1:4]))
# Remove missing and infinite values
clean_data <- na.omit(iris[, c("Sepal.Width", "Sepal.Length")])
plot(clean_data$Sepal.Width, clean_data$Sepal.Length)

