# 12.05.2021
# Principios de estadística
# Pruebas de t de una muestra

copa <- read.csv("Datos/canopy.csv", header = T)
head(copa)

mean(copa$Cnpy)
length(copa$Cnpy)

# H0 La media de la variable apertura del dosel  (observada en campo)  es igual a la media de 31% (media teorética).
# H1 La media de la variable apertura del dosel  (observada en campo) es diferente a la media de 31% (media teorética).
#  alfa = 0.05

# Aplicar prueba de t de una muestra
t.test(copa$Cnpy, mu = 30.4)
