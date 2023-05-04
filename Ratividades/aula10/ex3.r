data(rock)# Carregando o conjunto de dados rock
print(dim(rock)) # Mostrando o tamanho, lilhas por colunas
print(rock)# Visualizando as primeiras linhas do conjunto de dados

tam <- nrow(rock)
size <- floor(0.25*tam)
amostra_nums <- sample(tam, size)
amostra <- rock[amostra_nums,]

