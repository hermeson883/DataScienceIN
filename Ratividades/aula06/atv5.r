positivos <- c()
for(i in 1:6){
    valor <- as.double(readline('Digite o valor: '))
    if(valor>0){
        positivos <- c(positivos,valor)
    }   
}

print(sprintf("Sao %d números positivos",length(positivos)))
print(sprintf("%.1f",mean(positivos)))