# Clase  # 5
#  MAGT
# 11.03.2021
# Principios de estadística
# Regresión


# Datos iniciales ---------------------------------------------------------


xi <- c(15, 14, 13, 12, 9, 8)
yi <- c(8, 7, 7, 6, 5, 4)


plot(xi, yi, pch = 16)

# Crear un objeto (datos) con dos columnas diam (xi) y altura (yi)
datos <- data.frame(xi, yi)



# Crear una nueva columna en (datos) que tenga la observación en x menos la media de x (xi_m)
datos$xi_m <- round(datos$xi - mean(datos$xi),2)


# Crear una nueva columna en (datos) que tenga la observación en y menos la media de y (yi_m)
datos$yi_m <- round(datos$yi - mean(datos$yi),2)

# Crear la multiplicación de xi_m * yi_m

datos$xiyi_M <- round(datos$xi_m*datos$yi_m,2)

datos$xi_m2 <- round(datos$xi_m^2,2)

# Determinar Beta ---------------------------------------------------------


# Estimar el coeficiente Beta (pendiente de la línea de regresión)
beta <- sum(datos$xiyi_M)/sum(datos$xi_m2)

# Valor de Beta es=
beta



# Determinar Alfa ---------------------------------------------------------

# alfa= media de Y - beta*media de X

alfa <- mean(datos$yi) - beta*mean(datos$xi)
alfa


datos$yprima <- round(alfa + beta*datos$xi,2)



plot(datos$xi, datos$yi, pch = 16, col="red")
lines(datos$xi, datos$yprima, type="l", lty=2, lwd=2)

#  Ejercicio en clase: Encontrar la altura para los siguientes diámetros: 8.5, 10.3, 11.4, 12.5, 13.6, 14.3

diametros <- c(8.5, 10.3, 11.4, 12.5, 13.6, 14.3)

yprima <- round(alfa + beta * diametros, 2)

estimados <- data.frame(diametros, yprima)

# Regresión usando la función lm ------------------------------------------

diam.lm <- lm(datos$yi ~ datos$xi) 
diam.lm
summary(diam.lm)

diam.lm$fitted.values
sum(diam.lm$residuals)

plot(datos$xi, datos$yi, col="green", pch=16)
abline(diam.lm, col="red")

cor.test(datos$xi, datos$yi)
