#Calcule a soma dos 100 primeiros números ímpares no intervalo [1,500].
soma<-0
cont <- 0
for(i in 1:500){
    if(i%%2!=0 & cont<100){
        soma <- soma+i
        cont <- cont+1
    }
}
print(soma)