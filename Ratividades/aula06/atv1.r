valores <- c()

for(i in 1:10){
    valor <- as.integer(readline("Digite: "))
    valores <- c(valores, valor)
}
print(var(valores))

