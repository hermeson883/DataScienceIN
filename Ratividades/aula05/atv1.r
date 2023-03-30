# Criar um programa que soma dois números inseridos pelo usuário e imprime o resultado.

num1 <- as.integer(readline('digite o primeiro valor: '))
num2 <- as.integer(readline('digite o segundo valor valor: '))
print(num1+num2)
final <- sprintf("A soma do primeiro valor %d com o segundo %d é %d",num1,num2,(num1+num2))
print(final)
cat('a soma do valor', num1, 'com o', num2, 'é', (num1+num2))
