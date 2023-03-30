#A função 'read.csv()' é utilizada para ler arquivos que estão no formato csv



#Teremos sempre que armazenar esses dados em uma variável para podermos ter mais facilmente acesso a elas



nba <- read.csv('Players_tratado.csv')



#Exibindo toda a nossa tabela



nba



#Como pegar linhas No R?
#Posso pegar dados referentes as linhas do R da seguinte forma
#Devemos fazer da forma que faziamos em um vetor, porém com algumas poucas diferenças



#Criando o vetor de exemplo:



vetor <- c(10,20,30,40,50,60)



#Pegando o primeiro elemento do vetor até o 5



vetor[1:5]



# Quando usamos um dataframe essa notação continua



nba[1:5, ]



# De agoram em diante como trabalhamos com duas dimensões temos como pegar dois valores -> linhas e colunas



nba[linhas,colunas]



#Tudo que está antes da virgula é linha e tudos que está depois é coluna (Nota: quando deixamos vazios pegamos todas as coluna)



nba[1:5, ]


# Outro modelo também é usando o "$". pois ele também pegara as informações das nossas linhas



dados$Nome_da_coluna



#Como podemos fazer filtragem de dataFrame no R?



#Anteriormente visto usavamos as condicionais "If" ou "Else" e seus simbolos de comparação:



# 5 > 0 -> Simbolo de 'maior que'
# 0 < 5 -> Simbolo de 'Menor que'
# 1==1  -> Simbolor de 'Comparação'
# 1 != 0 -> Simbolo de 'diferença'



# Onde a partir deles podemos fazer diversos tipos de filtragem como sabe se o número par ou impar
#Quando mexemos com dataFrame isso se mantem, porém de uma forma diferente
#Devemos usar primeiro o nome da nossa variável que armazena nossa tabela e depois um par de [], onde filtraremos linhas e colunas
#Nessa primeira parte trabalharemos mais com linhas do que com colunas
#Quando deixamos a parte das colunas vazias pegamos todas as colunas automaticamente



nba[nba$coluna > 10,]



#Posso também fazer filtragem por strings



#1- Questão: Descubra todos os jogadores que nasceram na 'California'
#Comandos para filtragem de dados -> [dados$coluna > 'nome_do_que_deseja_pegar',]



nba_california <- nba[nba$birth_state == 'California',]



#Pegamos todos os jogadores que nasceram na california
nba_california



#2 - Questão: Calcule a media altura de todos os jogadores



#Função mean -> faz a média dos jogadores



mean(nba$height)



#3 - Questão: Ache o maior e o menor jogadores



#Função max() -> Pega o maior valor das linhas de uma coluna



max(nba$height)



#Função min() -> Pega o menor valor das linhas de uma coluna



min(nba$height)



#4 - Questão: Ordene os jogadores por altura



#Função 'sort()' irá ordenar cada um dos meus elemento do menor até o maior



nba$height <- sort(nba$height, decreasing = TRUE)



nba
