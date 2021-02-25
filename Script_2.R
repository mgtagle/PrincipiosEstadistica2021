# Marco Aurelio González Tagle
# Matrícula 12345678
# Fecha 24.01.2021
# Estádisticas descriptivas


dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1,  
         14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3, 9.7, 6.5,  
         23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8) 
length(dbh)


# Medidas de tendencia central --------------------------------------------

# Media

mean(dbh)

sum(dbh)/length(dbh)


# Mediana

median(dbh)

# Media geométrica

exp(mean(log(dbh)))

# Moda (crear una función particular para obtenerla moda.)

moda = function(x)
{
m1 <- sort(table(x), decreasing = TRUE)
moda <- names(m1[m1==m1[1]])
moda <- as.numeric(moda)
return(moda)
}

moda(dbh)


# Medidas de dispersión ---------------------------------------------------

# rango
range(dbh)

# Varianza (s^2)

var(dbh)

# Desviación estándar (s) función sd

sd(dbh)

# Obtener la raíz cuadrada de la varianza me da la SD
sqrt(var(dbh))

# cuantiles o percentiles

quantile(dbh, 0.5) # El cualtil 0.5 corresponde al valor de la mediana

# cuantil 15%

quantile(dbh, 0.15)


# función fivenum

fivenum(dbh)

# Coeficiente de Variación (CV %)

100 * sd(dbh) / mean(dbh)

# Representación gráfica --------------------------------------------------


# Gráfica de Boxplot o de cajas

boxplot(dbh, horizontal = TRUE, col="red", main = "Gráfica de boxplot", xlab = "Diámetro (cm)")

# Gráfica de Tallo y Hoja (stem)

stem(dbh, scale= 1)

# Gráfica de histograma

hist(dbh, main = "Histogram", xlab = "Diámetro (cm)", ylab = "Frecuencia",
     ylim = c(0,10), col="green", xlim = c(5, 40))


