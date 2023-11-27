#a) A probabilidade do preço do m2 ser inferior a R$ 1.000,00.

media <- 900
variancia <- 10000

desvio_padrao <- sqrt(variancia)

valor_limite_a <- 1000

z_score_a <- (valor_limite_a - media) / desvio_padrao

probabilidade_a <- pnorm(z_score_a)

cat("a) A probabilidade do preço do m2 ser inferior a R$ 1.000,00 é:", probabilidade_a, "\n")

#b) A probabilidade do preço do m2 ser de R$ 1.000,00 a R$ 1.200,00.

valor_limite_b1 <- 1000
valor_limite_b2 <- 1200

z_score_b1 <- (valor_limite_b1 - media) / desvio_padrao
z_score_b2 <- (valor_limite_b2 - media) / desvio_padrao

probabilidade_b <- pnorm(z_score_b2) - pnorm(z_score_b1)

cat("b) A probabilidade do preço do m2 ser de R$ 1.000,00 a R$ 1.200,00 é:", probabilidade_b, "\n")

#c) Qual o teto de preço para 97,5% dos m2 construídos?

probabilidade_c <- 0.975

teto_preco <- qnorm(probabilidade_c, mean = media, sd = desvio_padrao)

cat("c) O teto de preço para 97,5% dos m2 construídos é:", teto_preco, "\n")