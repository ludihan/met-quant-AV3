#a) Qual é a porcentagem de garrafas em que o volume de líquido é menor que 990 cm³?

media <- 1000
desvio_padrao <- 10

prob_a <- pnorm(990, mean = media, sd = desvio_padrao)

cat("A porcentagem de garrafas com volume menor que 990 cm³ é:", prob_a * 100, "%\n")

#b) Qual é a porcentagem de garrafas em que o volume de líquido não se desvia da média em mais do que dois desvios padrões?

prob_b <- pnorm(media + 2 * desvio_padrao, mean = media, sd = desvio_padrao) -
  pnorm(media - 2 * desvio_padrao, mean = media, sd = desvio_padrao)

cat("A porcentagem de garrafas com volume dentro de dois desvios padrões da média é:", prob_b * 100, "%\n")

#c) Se 10 garrafas são selecionadas ao acaso, qual é a probabilidade de que, no máximo, 4 tenham volume de líquido superior a 1002 cm³?

n_garrafas <- 10
limite_superior <- 1002

prob_c <- sum(dbinom(0:4, size = n_garrafas, prob = pnorm(limite_superior, mean = media, sd = desvio_padrao)))

cat("A probabilidade de no máximo 4 garrafas terem volume superior a 1002 cm³ é:", prob_c * 100, "%\n")