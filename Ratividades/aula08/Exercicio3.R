ibge <- read.csv('https://raw.githubusercontent.com/natorjunior/db-atividades/main/ibge_populacao.csv')
ibge

#2304400 -> id de fortaleza
sd(ibge$populacao)

table(!complete.cases(ibge$populacao))

