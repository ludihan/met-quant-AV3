media_renda <- 50000
variancia_renda <- 25000000

set.seed(123)
amostra_renda <- rnorm(n = 100, mean = media_renda, sd = sqrt(variancia_renda))

media_amostral <- mean(amostra_renda)
desvio_padrao_amostral <- sd(amostra_renda)

nivel_confianca <- 0.95
erro_padrao_media <- desvio_padrao_amostral / sqrt(length(amostra_renda))
margem_erro <- qnorm((1 + nivel_confianca) / 2) * erro_padrao_media
intervalo_confianca <- c(media_amostral - margem_erro, media_amostral + margem_erro)

cat("Média da renda:", media_amostral, "\n")
cat("Desvio padrão da renda:", desvio_padrao_amostral, "\n")
cat("Intervalo de confiança para a média (95%):", intervalo_confianca, "\n")