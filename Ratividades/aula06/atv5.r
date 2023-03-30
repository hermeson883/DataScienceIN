#Leia 6 valores. Em seguida, mostre quantos destes valores digitados foram positivos. Na próxima linha, deve-se mostrar a média de todos os valores positivos digitados, com um dígito após o ponto decimal.

positivos <- c()
for(i in 1:6){
    valor <- as.double(readline('Digite o valor: '))
    if(valor>0){
        positivos <- c(positivos,valor)
    }   
}

print(sprintf("Sao %d números positivos",length(positivos)))
print(sprintf("%.1f",mean(positivos)))