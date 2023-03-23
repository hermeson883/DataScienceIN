x <- 1:99
x <- c(x,200)
boxplot(x)













x <- c(5, 8, 10, 10, 15, 18, 23)
q1 <- quantile(x, 0.25)
mediana <- median(x)
q3 <- quantile(x, 0.75)
boxplot(x)


x <- c(10, 12, 14, 16, 18, 20, 22, 24, 26, 28)
y <- c(5, 8, 11, 14, 17, 20, 23, 26, 29, 32)
boxplot(list(x, y))


# Definindo um conjunto de dados como um vetor:
dados <- c(18, 21, 21, 23, 23, 25,
           27, 29, 30, 31, 32, 32,
           32, 34, 35, 36, 38, 41,
           42, 42, 43, 44, 45, 46,
           46, 47, 48, 50, 54, 56,
           57, 58, 60, 61, 98, 116)

# Carregando os dados
#dados <- c(10, 15, 18, 20, 22, 24, 25, 26, 28, 30)

# Criando o gráfico
boxplot(dados,
        main = "Boxplot de Exemplo",
        ylab = "Valores",
        col = "lightblue",
        border = "blue",
        pch = 20)

# Adicionando a média e o desvio padrão
m <- mean(dados)
sd <- sd(dados)
text(1.35, m, paste0("Média = ", round(m, 2)))
text(1.35, m + sd, paste0("Desvio padrão = ", round(sd, 2)))






# Criar o boxplot personalizado
boxplot(valores,
        main = "Boxplot dos valores",
        xlab = "Valores",
        col = "gray",
        border = "blue",
        whisklty = 2,
        medcol = "red",
        outpch = 19)

