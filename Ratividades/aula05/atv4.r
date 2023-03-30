# Criar um programa que imprime a tabuada de um número inserido pelo usuário.

num <- as.integer(readline('digite o numero'))

for(i in 1:10){
    cat(num,'x',i,'=', num*i,'\n')
}

