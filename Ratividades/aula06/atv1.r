#Criar um programa que recebe 10 valores inseridos pelo usuário, salva em um vetor e depois calcule a variância e imprime o resultado.
valores <- c()

for(i in 1:10){
    valor <- as.integer(readline("Digite: "))
    valores <- c(valores, valor)
}
print(var(valores))

