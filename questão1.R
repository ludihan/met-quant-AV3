n <- 8
p_defeito <- 0.05

prob_aceito <- pbinom(1, size = n, prob = p_defeito)

cat("A probabilidade de um lote ser aceito é:", prob_aceito, "\n")