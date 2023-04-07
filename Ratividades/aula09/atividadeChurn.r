churn <- read.csv('churn.csv',sep=';', na.strings = '')
colnames(churn) = c("Id","Score","Estado","Genero",
                    "Idade","Patrimonio","Saldo","Produtos",
                    "TemCartCredito","Ativo","Salario","Saiu")
churn

# 1 - Use a função 'table(is.na())' para saber se existe dados nulos na coluna 'Genero'
table(is.na(churn$Genero))


# 2 - Substitua os valores nulos pelo valor que mais aparece na tabela (Use a função 'table()' para ver a frequência da coluna)
table(churn$Genero)
churn[is.na(churn$Genero),]$Genero <- 'Masculino'
table(is.na(churn$Genero))

# 3 - Substitua os os valores que contem 'M' por 'Masculino'
churn[churn$Genero == 'M',]$Genero <- 'Masculino'
churn



# 4 - Substitua os valores que contém 'F' ou 'FEM' por 'Feminino'
churn[churn$Genero == 'F' | churn$Genero == 'FEM',]$Genero <- 'Feminino'
churn

# 5 - Veja quem tem a maior e menor idade da coluna 'Idade'
max(churn$Idade)
min(churn$Idade)

# 6 - Veja quem tem uma idade menor ou igual a 10 e substitua pela médiana
churn[churn$Idade <=10,]$Idade <- median(churn$Idade)

# 7 - Veja quem tem uma idade maior ou igual a 100 e substitua pela médiana
churn[churn$Idade >= 100,]$Idade <- median(churn$Idade)
churn

max(churn$Idade)
min(churn$Idade)