#Faça um programa que leia as notas referentes às duas avaliações de um aluno. Calcule e imprima a média semestral. Faça com que o algoritmo só aceite notas válidas (uma nota válida deve pertencer ao intervalo [0,10]).

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

