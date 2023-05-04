library(sampling)
set.seed(1)
url <- 'https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data'
df_iris <- read.csv(url,sep=',',header = FALSE) 
head(df_iris)
# Amostragem estratificada aleatória de 50% dos dados
amostra <- strata(data = df_iris, stratanames = "V5", size = c(25, 25, 25), method = "srswor")
#filtrando só as amostras
amostra <- df_iris[amostra$ID_unit,]
#percorrendo os estratos
for(species in c('Iris-setosa','Iris-virginica','Iris-versicolor')){
    #filtrando apenas uma especie e mantendo as quatro primeiras variáveis
    df_amostra <- amostra[amostra$V5==species,1:4]
    print(species)
    #calculando a média e o desvio padrao de cada coluna
    for (i in df_amostra){
        cat('mean',mean(i),' \n')
        cat('sd',sd(i),' \n')
    }
    cat(nrow(df_amostra)/50,'\n\n')
}


