#Calcule a soma dos 100 primeiros números ímpares maiores que vinte, que estejam no intervalo [1,500].

soma<-0
for(i in 20:220){
    if(i%%2!=0){
        soma <- soma+i
    }
}
print(soma)