# Marco Aurelio González Tagle
# Matrícula 12345678
# Fecha 24.01.2021
# Solución a tarea 01


# Problema 1 --------------------------------------------------------------

# Problema 1 Asignar valor a los objetos (especies)

Pinus <- 3140
Mezquite <- 1453
Encinos <-  450
Teka <- 1200
Juniperus <- 720

superficie <- c(Pinus, Mezquite, Encinos, Teka, Juniperus)
superficie

superficie <- c(3140, 1453, 450, 1200, 720)
superficie


# Gráfica de barras (barplot)

barplot(superficie, ylab= "Superficie (has)", xlab = "Especies", col= "yellow")

# Agregar nombres a cada una de las columnas con la funicón "names.arg"

barplot(superficie, ylab= "Superficie (has)", xlab = "Especies",
        names.arg = c("Pinus","Mezquite","Encinos","Teka","Jun"), col="#69b3a2")


# Ordenar las barras en orden decreciente con la función "order"

barplot(superficie[order(superficie, decreasing = TRUE)], 
        ylab= "Superficie (has)", xlab = "Especies",
        names.arg = c("Pinus","Mezquite","Encinos","Teka","Juniperus"), 
        col="#69b3a2")

# Determinar la media con la función "mean" para las superficies reforestadas

mean(superficie)

#  Guardar la media en un objeto

sup.prom <- mean(superficie)
sup.prom


# Problema 2 --------------------------------------------------------------

germinacion <- c(4, 1, 6, 2, 4, 2, 4, 2, 4, 6, 3, 5, 3, 2, 5, 4, 0, 5, 4,
                 2, 4,5, 3, 5, 3, 5, 4, 3, 6, 2)

# Determinar el numero de observaciones usando la función "length"
length(germinacion)

# Determinar la media de las semillas germinadas por caja Petri
mean(germinacion)

# En promedio en cada caja Petri germinan 3.6 semillas

# Determinar la desviación estándar

sd(germinacion)
# La dsviación estándar de la germinación an cada caja petri fue de 1.5 semillas.


# Problema 3 --------------------------------------------------------------

# Altura promedio de las plántulas de un año para la especies Prosopis

altura <- c(38, 14, 44, 11, 9, 21, 39, 28, 41, 4, 35, 24, 36, 12,
            20, 31, 24, 25, 10, 21, 11, 36, 37, 20, 26)
length(altura)

mean(altura)

# la altura promeido de las plántulas de mezquite (Prosopis) cuando tienen 
# un año de edad es de 24.68 cm

# Generar un histograma de frecuencias del objeto altura
hist(altura, col="green")
