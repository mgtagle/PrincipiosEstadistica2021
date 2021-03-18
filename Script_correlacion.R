# Marco
# Ejercicio de correlación

conjunto <- read.csv("cuadro1.csv", header = TRUE)


plot(conjunto$Diametros, conjunto$Altura)

cor.test(conjunto$Diametros, conjunto$Altura)

data("iris")

head(iris)
summary(iris)


setosa <- subset(iris, Species == "setosa")

plot(setosa$Petal.Length, setosa$Petal.Width)
plot(setosa$Petal.Width, setosa$Petal.Length, col="red")

cor.test(setosa$Petal.Length, setosa$Petal.Width)


virginica <- subset(iris, Species == "virginica")
plot( virginica$Petal.Width, virginica$Petal.Length)

cor.test(virginica$Petal.Width, virginica$Petal.Length)

plot(virginica$Sepal.Width, virginica$Sepal.Length)
cor.test(virginica$Sepal.Length, virginica$Sepal.Width)
