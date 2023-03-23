notas <- c()
while(length(notas)<2){
    nota <- as.integer(readline("Digite a nota: "))
    if( nota >=0 & nota <=10){
        notas <- c(notas, nota)
    }else {
       print('Nota Inválida')
    }
}
print(mean(notas))

