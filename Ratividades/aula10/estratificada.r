library(sampling)
set.seed(123) # Define a semente aleatória para garantir a reprodutibilidade
populacao <- data.frame(
  idade = c(rep("18-29", 200), rep("30-49", 300), rep("50 ou mais", 500)),
  salario = rnorm(n = 1000, mean = 2000, sd = 500)
)
amostra <- strata(data = populacao, stratanames = "idade", size = c(10, 10, 10), method = "srswor")
#populacao[amostra$ID_unit,]
amostra



#ID_unit: representa o identificador único da unidade amostral. Cada unidade amostral deve ter um identificador exclusivo.
#Prob: representa a probabilidade de seleção da unidade amostral na amostra. Cada unidade amostral tem uma probabilidade de seleção conhecida e não nula.
#Stratum: representa o estrato a que a unidade amostral pertence. Cada unidade amostral deve ser atribuída a um estrato exclusivo. A amostra deve conter unidades amostrais de todos os estratos relevantes. O estrato é uma variável categórica que é usada para agrupar as unidades amostrais que são semelhantes entre si.
#o método "srswor", que é um método de seleção aleatória sem substituição com igual probabilidade de seleção
