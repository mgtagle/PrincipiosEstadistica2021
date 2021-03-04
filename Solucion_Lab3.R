# MAGT
# Laboratorio 3
#  03.03.2021


# Importar datos csv ------------------------------------------------------


conjunto <- read.csv("cuadro1.csv", header = TRUE)

head(conjunto)
tail(conjunto)

hist(conjunto$Diametros)
hist(conjunto$Altura)

mean(conjunto$Diametros)
mean(conjunto$Vecinos)
range(conjunto$Vecinos)


#  Importar de la carpeta Datos el archivo cuadro2.csv

conjunto.2 <- read.csv("Datos/cuadro2.csv", header = TRUE)

# Directamente en consola -------------------------------------------------

dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1, 
         14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3, 
         9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)

sum(dbh)
prod(dbh)

hist(dbh)

# Importar datos de una url -----------------------------------------------

prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url)
head(profepa)
profepa

sum(profepa$Inspecciones)
sum(profepa$Operativos)
sum(profepa$Recorridos.de.vigilancia)

prof_url_2 <- paste0("http://www.profepa.gob.mx/innovaportal/",
                        "file/7635/1/accionesInspeccionfoanp.csv")
profepa2 <- read.csv(prof_url_2)
head(profepa2)


# Importar datos de url seguras -------------------------------------------

library(repmis)

conjunto.2 <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

sum(conjunto.2$Vecinos)



library(readr)

file <- paste0("https://raw.githubusercontent.com/mgtagle/",
                       "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)


sum(inventario$Vecinos)


# Parte II:  --------------------------------------------------------------


