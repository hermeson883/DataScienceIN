celsius_para_fahrenheit <- function(celsius){
    fahrenheit <- (celsius * 1.8) + 32
    return(fahrenheit)
}

fahrenheit <- celsius_para_fahrenheit(10)
print(fahrenheit)