library(sampling)
set.seed(1)
#gerando uma dataset ficticio
idade <- sample(10:18, 500, replace = TRUE)
genero <- sample(c("Masculino", "Feminino"), 500, replace = TRUE, prob = c(0.6, 0.4))
serie <- sample(c("EF1", "EF2", "EM"), 500, replace = TRUE, prob = c(0.3, 0.4, 0.3))
renda_familiar <- sample(c("Baixa", "Média", "Alta"), 500, replace = TRUE, prob = c(0.4, 0.4, 0.2))
acesso_pc <- sample(c("Sim", "Não"), 500, replace = TRUE, prob = c(0.7, 0.3))

#criando um dataframe
dados_alunos <- data.frame(idade, genero, serie, renda_familiar, acesso_pc)
#fazendo uma amostra estratificada.
amostra <- strata(data = dados_alunos, stratanames = "serie", size = c(33,33,34), method = "srswor")
head(amostra)
#inicializando os valores para calculo da média ponderada
media_ponderada <- 0
pesos_media <-  0
#percorrendo os estratos
for(strat in c(1,2,3)){
    #filtrando os identificadores do estrato corrente
    id_amostra <- amostra[amostra$Stratum==strat,'ID_unit']
    #filtrando apenas a amostra estratificada
    df_amostra <- dados_alunos[id_amostra,]
    #calculando a proporcao, quantidade_de_alunos_com_PC_no_estrato/quantidade_total_no_estrato
    prop <- nrow(df_amostra[df_amostra$acesso_pc =='Sim',])/nrow(df_amostra)
    #soma da media ponderada
    media_ponderada <- media_ponderada+prop*nrow(df_amostra)
    #soma dos pesos
    pesos_media <- pesos_media + nrow(df_amostra)
    print(prop)
}
print(paste('Média ponderada',media_ponderada/pesos_media))
