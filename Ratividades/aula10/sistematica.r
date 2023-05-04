# Carregar o conjunto de dados
data(mtcars)

# Escolher um carro aleatório como ponto de partida
ponto_partida <- sample(1:nrow(mtcars), 1)

# Definir o intervalo de amostragem
k <- ceiling(nrow(mtcars)/10)

# Selecionar os elementos da amostra sistemática
amostra_sistematica <- mtcars[ponto_partida:nrow(mtcars):k, ]

# Imprimir a amostra
print(amostra_sistematica)
