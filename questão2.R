#a) A probabilidade de zero destes tanques apresentar vazamento:

n <- 20
k <- 0
p <- 0.1

prob_a <- dbinom(k, n, p)
prob_a

#b) A probabilidade de menos de 5 tanques apresentar vazamento:
k_b <- 0:4

prob_b <- sum(dbinom(k_b, n, p))
prob_b

#c) A probabilidade de pelo menos 10 tanques apresentarem vazamento:
k_c <- 0:9

prob_c <- 1 - sum(dbinom(k_c, n, p))
prob_c

#d) A probabilidade de menos de 12 e mais de 3 apresentarem vazamento:
k_d <- 4:11

prob_d <- sum(dbinom(k_d, n, p))
prob_d