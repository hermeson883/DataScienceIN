#Criar um programa que converte uma temperatura em graus Celsius para graus Fahrenheit


fahrenheit = (celsius * 1.8) + 32

celsius_para_fahrenheit <- function(celsius){
    fahrenheit <- (celsius * 1.8) + 32
    return(fahrenheit)
}

fahrenheit <- celsius_para_fahrenheit(10)
print(fahrenheit)

# fahrenheit = (celsius * 1.8) + 32
