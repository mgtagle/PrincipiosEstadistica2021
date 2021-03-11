# Laboratorio # 4
#  MAGT
# 11.03.2021
# Principios de estadística



# Importar datos ----------------------------------------------------------

c1.url <- paste0("https://raw.githubusercontent.com/mgtagle/",
                 "PrincipiosEstadistica2021/main/cuadro1.csv")

inventario <- read.csv(c1.url)
head(inventario)
tail(inventario)


# Funciones para revisar el conjunto de datos -----------------------------

str(inventario)
dim(inventario)
head(inventario)
tail(inventario)
names(inventario)
colnames(inventario)
names(inventario[  ,4:7])
summary(inventario)

is.factor(inventario$Especie)
inventario$Especie <- factor(inventario$Especie)
is.factor(inventario$Especie)

summary(inventario)


is.factor(inventario$Posicion)
inventario$Posicion <- factor(inventario$Posicion)
summary(inventario)



# Tablas de frecuencia ----------------------------------------------------

# Frecuencia absoluta
freq.pos <- table(inventario$Posicion)
freq.pos

# Frecuencia relativa

prop.pos <- freq.pos / sum(freq.pos)
prop.pos

# Frecuencia en porcentaje

prop.porce <- prop.pos * 100
prop.porce


# Representación gráfica  para variables cualitativas--------------------------------------------------

barplot(freq.pos, col = "#ff9966", border = NA, las = 1, ylim = c(0, 20), cex.names = 0.7)



pie(freq.pos, labels = paste(levels(inventario$Posicion), round(prop.porce,2), "%"),
    col = c("#ffcc99", "#e6b8a3", "#cca3ad", "#a685bd"))


# Representación gráfica para variables cuantitativas ---------------------

hist(inventario$Diametros, ylim = c(0,20))

his.diam <- hist(inventario$Diametros)
his.diam

hist(inventario$Diametros, 
     breaks = c(5, 10, 15, 20, 25),
     col= "#2eb847")


hist_3 <- hist(inventario$Diametros, 
               breaks = c(5,10, 15, 20, 25),
               col= "#2eb847")


