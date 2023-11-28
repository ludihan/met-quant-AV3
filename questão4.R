n <- 25
k_max <- 1
p_acordado <- 0.05
p_verdadeiro <- 0.15

prob_aceitacao <- pbinom(k_max, size = n, prob = p_acordado)

cat("A probabilidade de aceitação da garantia é:", prob_aceitacao, "\n")
