#Leia o dataset casos_covid.csv usando o R;
covid <- read.csv('https://raw.githubusercontent.com/natorjunior/db-atividades/main/casos_covid_ce.csv')
covid



# Calcule a média e desvio padrão dos casos (campo quantidade) da amostra;
sd(covid$quantidade) # Desvio Padrão



mean(covid$quantidade) #Média quantidade



# Faça um histograma usando o campo quantidade;
hist(covid$quantidade)


# Crie um boxplot para os campos quantidade e média móvel.
boxplot(covid$quantidade)
boxplot(covid$mediaMovel)