# Clase  # 6
#  MAGT
# 11.03.2021
# Principios de estadística
# Regresión




# Importar datos canopy ---------------------------------------------------

copa <- read.csv("Datos/canopy.csv", header = T)
head(copa)


summary(copa)

plot(copa$Cnpy , copa$LAI4, pch=16)
cor.test(copa$Cnpy, copa$LAI4)


copa.lm <- lm(copa$LAI4 ~ copa$Cnpy)
copa.lm

summary(copa.lm)


plot(copa$Cnpy , copa$LAI4, pch=16, xlab="Apertura del dosel (%)", ylab = "Índice de área foliar")
abline(copa.lm, col="red")
text(23, 1.0, "Y = 2.737 - 0.047*(x)")

# ¿Cuáles son los valores de la línea de regresión? Agregar una columna "predichos" en la BD copa
copa.lm$fitted.values
# ¿Dónde están almacenados esos valores? 
# Estan almacenados en copa.lm$fitted.values
copa$predichos <- copa.lm$fitted.values
# ¿Cuántos grados de libertad (df) tiene el análisis de regresión?
# 178 GL o df

# Determinar mediante la ecuación de regresión los siguientes valores:
#  20, 22, 24, 25, 26, 28.3, 30.3, 31.8, 33, 35

valores <-  c(20, 22, 24, 25, 26, 28.3, 30.3, 31.8, 33, 35)
2.737 - 0.047*(valores)
