vetor <- c()
repeat{
    valor <- as.numeric(readline('Digite: '))
    if(valor<0){
        break
    }
    vetor <- c(vetor, valor)
}
print(vetor)
