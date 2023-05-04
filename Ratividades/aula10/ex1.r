#install.packages("sampling")
library(sampling)

set.seed(123) # Define a semente aleatória para garantir a reprodutibilidade
amostra <- sample(x = 1:100, size = 20, replace = FALSE)
print(amostra)
