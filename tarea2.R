# Datos
grupoA <- c(12, 10, 11, 13, 14, 12, 9, 13, 10, 12, 11, 13, 10, 12)
grupoB <- c(17, 16, 18, 15, 17, 19, 16, 18, 17, 20, 19, 16, 18, 17)

# Tamaño de muestra
length(grupoA)
length(grupoB)

# Media
mediaA <- mean(grupoA)
mediaB <- mean(grupoB)

# Varianza
varianzaA <- var(grupoA)
varianzaB <- var(grupoB)

# Desviación estándar
sdA <- sd(grupoA)
sdB <- sd(grupoB)

# Coeficiente de variación
cvA <- (sdA / mediaA) * 100
cvB <- (sdB / mediaB) * 100

# Resultados
cat("Grupo A:\n")
cat("Media:", mediaA, "\n")
cat("Varianza:", varianzaA, "\n")
cat("Desviación estándar:", sdA, "\n")
cat("Coeficiente de variación (%):", cvA, "\n\n")

cat("Grupo B:\n")
cat("Media:", mediaB, "\n")
cat("Varianza:", varianzaB, "\n")
cat("Desviación estándar:", sdB, "\n")
cat("Coeficiente de variación (%):", cvB, "\n\n")

# Prueba t para dos muestras independientes (varianzas iguales o distintas)
t.test(grupoA, grupoB, var.equal = FALSE)  # usa var.equal = TRUE si asumes varianzas iguales

