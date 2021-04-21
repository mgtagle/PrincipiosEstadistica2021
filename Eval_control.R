# Examen de control tema corrrelación

# Importar datos


eba <- read.csv("ebanos.csv", header =T)

mean(eba$diametro); mean(eba$altura)

sd(eba$diametro); sd(eba$altura)

plot(eba$diametro, eba$altura, pch=16, col="green", xlab="Diámetro (cm)", ylab ="Altura (cm)")
abline(lm(eba$altura ~ eba$diametro), col="red", lty =2, lwd = 2.5)


#  Hipótesis

cor.test(eba$diametro, eba$altura)
