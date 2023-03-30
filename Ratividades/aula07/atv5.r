# Leia valores de forma indefinida e salve em um vetor até que o usuário digite um valor negativo, no fim mostre todos os valores positivos digitados.  

vetor <- c()
repeat{
    valor <- as.numeric(readline('Digite: '))
    if(valor<0){
        break
    }
    vetor <- c(vetor, valor)
}
print(vetor)
