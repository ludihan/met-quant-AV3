#a) A probabilidade da ocorrência de transmissão de pelo menos 01 (um) bit errado:

p_erro <- 0.05

prob_pelo_menos_um_erro <- 1 - (1 - p_erro)^8

cat("A probabilidade da ocorrência de pelo menos 01 bit errado é:", prob_pelo_menos_um_erro, "\n")

#b) A probabilidade de exatamente 02 (dois) bits errados:

n_bits <- 8

prob_exatamente_dois_erros <- choose(n_bits, 2) * p_erro^2 * (1 - p_erro)^(n_bits - 2)

cat("A probabilidade de exatamente 02 bits errados é:", prob_exatamente_dois_erros, "\n")