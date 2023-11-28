p <- 0.01
E <- 0.02
alpha <- 0.05

Z <- qnorm(1 - alpha/2)

n <- (Z^2 * p * (1 - p)) / E^2

n <- ceiling(n)

print(paste("Tamanho da amostra necessário:", n))