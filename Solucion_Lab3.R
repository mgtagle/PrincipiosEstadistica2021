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

# Selección mediante restricciones

dbh
mean(dbh)        

dbh < 10

sum(dbh < 10)

which(dbh < 10)


dbh.url <- "https://raw.githubusercontent.com/mgtagle/PrincipiosEstadistica2021/main/DBH_1.csv"
parcelas <- read.csv(dbh.url)


tree.13 <- parcelas[!(parcelas$parcela == "2"),]

tree.23 <- parcelas[!(parcelas$parcela == "1"),]

tree.12 <- parcelas[!(parcelas$parcela == "3"),]


# Revisar las medias del dbh en cada combinación de parcelas

mean(tree.12$dbh); mean(tree.13$dbh); mean(tree.23$dbh)

# Selección de submuestras ------------------------------------------------

tree_mean <- subset(parcelas, dbh <= mean(parcelas$dbh))

tree.up <- subset(parcelas, dbh >= mean(parcelas$dbh))

mean(tree_mean$dbh); mean(tree.up$dbh)

# Representación gráfica de los dos subconjuntos

boxplot(tree_mean$dbh, main = "DBH <= media", col = "lightgreen", horizontal = TRUE)
boxplot(tree.up$dbh, main = "DBH >= media", col = "yellow", horizontal = T)

quantile(tree_mean$dbh, 0.5)
quantile(tree_mean$dbh, 0.75)



# Parte 3: representación gráfica -----------------------------------------

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")

mean(mamiferos$brain_wt)


hist(mamiferos$total_sleep, col="lightgreen", 
     ylim = c(0, 12), xlim = c(0, 22),
     las = 1)

hist(mamiferos$brain_wt)

fivenum(mamiferos$brain_wt)

data("chickwts")
head(chickwts)

alimentación <- table(chickwts$feed)
alimentación

barplot(alimentación)

barplot(alimentación[order(alimentación, decreasing = TRUE)])

orig.par <- par() # Originales de las gráficas
par(oma=c(1,1,1,1))
par(mar=c(4,5,2,1))

barplot(alimentación[order(alimentación)],
        horiz = TRUE,
        las = 1,
        col = c("#ffcc00", "#ffd11a", "#ffd633", "#ffdb4d", "#ffe066", "#ffe680"),
        main = "Frecuencias por tipos de
        alimentación",
        xlab = "Número de Pollos")
orig.par


superficie <- c(36.8, 182.9, 96.52, 203.24, 4.08)
nom <- c("No quemado", "Baja", "Mod-b", "Mod-a", "Alta")


# Instrucciones t.ly/98jG
data <- data.frame(
        name=nom,
        value=superficie
)

barplot(data$value, names= data$name,
        col=c("green", "yellow", "orange", "red", "purple"),
        ylab="Superficie (has)",
        xlab = "Severidad")



# 24 de marzo correlación -------------------------------------------------


data("anscombe")
anscombe

summary(anscombe[ , 1:4])
sd(anscombe$x1)
sd(anscombe$x2)


summary(anscombe[ , 5:8])
sd(anscombe$y1)
sd(anscombe$y3)

cor.test(anscombe$x1, anscombe$y1)

cor.test(anscombe$x2, anscombe$y2)

cor.test(anscombe$x3, anscombe$y3)

cor.test(anscombe$x4, anscombe$y4)



plot(anscombe$x1, anscombe$y1, pch=16, col="red")
abline(lm(anscombe$y1 ~ anscombe$x1), col="red")


plot(anscombe$x2, anscombe$y2, pch=16, col="green")
abline(lm(anscombe$y2~ anscombe$x2), col="red")


plot(anscombe$x3, anscombe$y3, pch=16, col="yellow")
abline(lm(anscombe$y3~ anscombe$x3), col="red")


plot(anscombe$x4, anscombe$y4, pch=16, col="purple")
abline(lm(anscombe$y4~ anscombe$x4), col="red")


