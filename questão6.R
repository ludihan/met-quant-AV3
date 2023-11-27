#a) Uma lâmpada queimar com mais de 1900h:

media_vida = 2060
desvio_padrao = 150
limite_superior = 1900

prob_a = 1 - pnorm(limite_superior, mean = media_vida, sd = desvio_padrao)

cat("a) A probabilidade de uma lâmpada queimar com mais de 1900h é:", prob_a, "\n")

#b) Uma lâmpada queimar entre 1800 e 1900h:

limite_inferior_b = 1800

prob_b = pnorm(1900, mean = media_vida, sd = desvio_padrao) - pnorm(limite_inferior_b, mean = media_vida, sd = desvio_padrao)

cat("b) A probabilidade de uma lâmpada queimar entre 1800 e 1900h é:", prob_b, "\n")

#c) A duração mínima para 2,5% dos valores:

percentil_c = 2.5

min_duracao_c = qnorm(percentil_c/100, mean = media_vida, sd = desvio_padrao)

cat("c) A duração mínima para 2,5% dos valores é:", min_duracao_c, "horas\n")

#d) No máximo uma lâmpada, de um conjunto de 4 lâmpadas, pegas ao acaso e com reposição, queimar com mais de 1800h:

num_lampadas_d = 4
limite_superior_d = 1800

prob_d = pbinom(1, size = num_lampadas_d, prob = 1 - pnorm(limite_superior_d, mean = media_vida, sd = desvio_padrao))

cat("d) A probabilidade de no máximo uma lâmpada queimar com mais de 1800h é:", prob_d, "\n")

#e) Exatamente 2 lâmpadas, de um conjunto de 5 lâmpadas, pegas ao acaso e com reposição, queimarem com menos de 2060h:

num_lampadas_e = 5
limite_superior_e = 2060

prob_e = dbinom(2, size = num_lampadas_e, prob = pnorm(limite_superior_e, mean = media_vida, sd = desvio_padrao))

cat("e) A probabilidade de exatamente 2 lâmpadas queimarem com menos de 2060h é:", prob_e, "\n")
