media <- 70
desvio_padrao <- 5

amostra <- rnorm(10000, mean = media, sd = desvio_padrao)

hist(amostra, breaks = 30, probability = TRUE, col = "lightblue", main = "Histograma e PDF de uma Distribuição Normal",
     xlab = "Peso", ylab = "Densidade")

x <- seq(min(amostra), max(amostra), length = 100)
y <- dnorm(x, mean = media, sd = desvio_padrao)
lines(x, y, col = "red", lwd = 2)

legend("topright", legend = c("PDF"), col = c("red"), lwd = 2)