data("iris")
str(iris)
iris_copy <- iris
#introducing missing values
iris_copy$Sepal.Length[c(15, 20, 50, 67, 97, 118)] <- NA
iris_copy$Sepal.Width[c(4, 80, 97, 106)] <- NA
iris_copy$Petal.Length[c(5, 17, 35, 49)] <- NA
summary(iris_copy)
length(which(is.na(iris_copy)))
iris_NA <- iris_copy[!complete.cases(iris_copy), ] 
iris_NA
iris_NA <- iris_copy[rowSums(is.na(iris_copy)) > 0, ] 
iris_NA
#first method is tp just remove the rows have NA
complete.cases(iris_copy)
iris_clean <- iris_copy[complete.cases(iris_copy), ] 
length(which(is.na(iris_clean)))#checking the length of the missing values presnt
iris_copy[is.na(iris_copy$Sepal.Length) & (iris_copy$Species == "setosa"),"Sepal.Length"] <-median(iris_copy$Sepal.Length[which(iris_copy$Species == "setosa")], na.rm = TRUE)
iris_NA <- iris_copy[!complete.cases(iris_copy), ]
iris_NA
iris_copy[is.na(iris_copy$Sepal.Length) & (iris_copy$Species == "versicolor"),"Sepal.Length"] <- median(iris_copy$Sepal.Length[which(iris_copy$Species == "versicolor")], na.rm = TRUE)
iris_NA <- iris_copy[!complete.cases(iris_copy), ]
iris_NA
iris_copy[is.na(iris_copy$Sepal.Length) & (iris_copy$Species == "virginica"),"Sepal.Length"] <- median(iris_copy$Sepal.Length[which(iris_copy$Species == "virginica")], na.rm = TRUE)
iris_NA <- iris_copy[!complete.cases(iris_copy), ] 
iris_NA

# Now we have removed 1 NA's. Only 8 left
iris_copy[is.na(iris_copy$Sepal.Width) & (iris_copy$Species == "setosa"),"Sepal.Width"] <-median(iris_copy$Sepal.Width[which(iris_copy$Species == "setosa")], na.rm = TRUE) 
iris_NA <- iris_copy[!complete.cases(iris_copy), ]
iris_NA

# Now we have removed 1 NA's. Only 7 left
iris_copy[is.na(iris_copy$Petal.Length) & (iris_copy$Species == "setosa"),"Petal.Length"] <-median(iris_copy$Petal.Length[which(iris_copy$Species == "setosa")], na.rm = TRUE) 
iris_NA <- iris_copy[!complete.cases(iris_copy), ]
iris_NA

