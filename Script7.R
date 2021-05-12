# 28.04.2021
# Principios de estadística
# Normalidad de datos




# Importar datos canopy ---------------------------------------------------

copa <- read.csv("Datos/canopy.csv", header = T)
head(copa)
cnpy.x <- density(copa$Cnpy)
hist(copa$Cnpy, freq = FALSE)
lines(cnpy.x, col="red", lwd=2)

# Prueba de Shapiro -------------------------------------------------------

# alfa = 0.05
# H0 los datos provienen de una distribución normal
# H1 los datos no provienen de una distribución normal

shapiro.test(copa$Cnpy)


hist(copa$LAI4)
shapiro.test(copa$LAI4)


hist(copa$GLI)
shapiro.test(copa$GLI)



# Prueba de Kolmogorov ----------------------------------------------------

# alfa = 0.05
# H0 los datos provienen de una distribución normal
# H1 los datos no provienen de una distribución normal

ks.test(copa$Cnpy, "pnorm", mean=mean(copa$Cnpy), sd=sd(copa$Cnpy))

ks.test(copa$LAI4, "pnorm", mean=mean(copa$LAI4), sd=sd(copa$LAI4))

ks.test(copa$GLI, "pnorm", mean=mean(copa$GLI), sd=sd(copa$GLI))

# Determinar la Homogeneidad de las varianzas -----------------------------

BE <- subset(copa, Forest == "CBE")
SR <- subset(copa, Forest == "CSR")

var(BE$Cnpy)
var(SR$Cnpy)

#  H0 = Las varianzas son iguales (homogéneas)
#  H1 = Las varianzas no son iguales

var.test(BE$Cnpy, SR$Cnpy)


# varianzas de la variable LAI4
var(BE$LAI4)
var(SR$LAI4)

var.test(BE$LAI4, SR$LAI4)

#  Varianzas de la variable GLI
var(BE$GLI)
var(SR$GLI)
var.test(BE$GLI, SR$GLI)

copa$Forest <- factor(copa$Forest)
library(car)
densityPlot(copa$LAI4~ copa$Forest)
summary(copa)

densityPlot(copa$Cnpy ~ copa$Forest)
densityPlot(copa$GLI ~ copa$Forest)
