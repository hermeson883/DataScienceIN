# Definir a semente aleatória para replicabilidade
set.seed(1)
url <- 'https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data'
df_iris <- read.csv(url,sep=',',header = FALSE) 
# Amostragem simples aleatória de 20% dos dados
amostra <- df_iris[sample(nrow(df_iris), floor(0.2*nrow(df_iris))),]

#percorrendo os estratos
for(s in c('Iris-setosa','Iris-virginica','Iris-versicolor')){
    #filtrando apenas uma especie e mantendo as quatro primeiras variáveis
    df_amostra <- amostra[amostra$V5==s,1:4]
    print(s)
    #calculando a média e o desvio padrao de cada coluna
    for (coluna in df_amostra){
        cat('mean',mean(coluna),' \n')
        cat('sd',sd(coluna),' \n')
    }
    cat(nrow(df_amostra)/nrow(df_iris[df_iris$V5==s,1:4]),'\n\n')
}





dim(amostra)
# Carregar o conjunto de dados Iris
data(iris)
# Calcule a média e o desvio padrão de cada coluna
#media <- apply(df_amostra, 2, mean)
#desvio_padrao <- apply(df_amostra, 2, sd)

# Verificar a proporção de cada espécie na amostra
prop.table(table(amostra$V5))
