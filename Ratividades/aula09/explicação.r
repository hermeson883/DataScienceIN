# O parâmetro na.string: irá transformar uma série de caracteres em string que estiverem no seguinte formato: ''
#O sep irá informar o separador do nosso arquivo que nesse caso é: ';'

dados <- read.csv('tempo.csv', na.strings = '', sep=';')
dados


#Irá mostrar se existe linhas NA no meu DataFrame.Irá devolver True para as que estiverem NA e irá devolver FALSE para as que não estiverem 
is.na(dados)


nrow(dados)


ncol(dados)


#Desconsiderando os dados nulos do dataframe
#A função na.omit irá remover todos os dados nulos do meu dataframe
dados2 <- na.omit(dados)

#Tratando os dados e removendo os dados que estão nulos e substituindo pela mediana se deseja usar a média dará um erro, pois existe um outline dentro desse Dataframe o que fará uma média erronea.
dados[is.na(dados$Umidade),]$Umidade <- median(dados$Umidade, na.rm = TRUE)

dados

#Normalizando a temperatura que estão acima dos 100 graus
dados[dados$Temperatura > 100,]$Temperatura <- median(dados$Temperatura, na.rm=TRUE)
dados

#Table mostra a frêquencia que apareceram os meus dados]
#Por exemplo: 
# VERDADEIRO apareceu 10 vezes 
# FALSO apareceu 20 vezes
table(dados$Vento)


#Substituindo os valores NA da coluna Vento e substituindo por FALSO(nossa moda)
dados[is.na(dados$Vento),]$Vento <- 'FALSO'
dados


#Substituindo a Umidade que estão acima de 100 graus pela mediana
dados[dados$Umidade > 100,]$Umidade <- median(dados$Umidade, na.rm=TRUE)
dados
