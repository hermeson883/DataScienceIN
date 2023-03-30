
dados <- read.csv('Jogadores.csv')
dados

#Pegar as primeiras 6 linhas do DataFrame
head(dados)

#Traz as 6 ultimas linhas
tail(dados)

#Faz uma analise geral de todas as colunas trazendo dados estátisticos
summary(dados)

#Maneiras de se extrair uma coluna
dados$Nome.completo.do.jogador
dados[1]
dados['Altura.em.cm']

mean(dados$Altura.em.cm)

lista <- c(50,80,11,1,2,20)
lista <- sort(lista)
lista
median(lista)

median(dados$Altura.em.cm)
mean(dados$Altura.em.cm)

#Trazer a frequência dos dados 
table(dados$Time.que.o.jogador.participou)

dados[dados$Time.que.o.jogador.participou == 'Cruzeiro' & dados$Altura.em.cm > 1.60,]


hist(dados$Altura.em.cm)


boxplot(dados$X.Peso.em.kg)


dados[dados$X.Peso.em.kg > 100,]


dados['nova_coluna'] = dados$X.Peso.em.kg * 2


#IMC -> peso / altura ^ 2
#Crie uma nova coluna com o IMC dos jogadores
dados['IMC'] <- dados$X.Peso.em.kg / dados$Altura.em.cm ^ 2
dados



