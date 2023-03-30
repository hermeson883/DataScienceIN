#Crie um programa que leia uma senha até que ela seja válida, caso o usuário digite uma senha incorreta apresentar a mensagem "Senha inválida" e caso a mesma esteja correta, apresentar a mensagem "Acesso permitido". Considere a senha "201030infinity" como a senha correta. 

senha <- readline("Digite a senha: ")
while(senha != "201030infinity"){
    print('Acesso negado')
    senha <- readline("Digite a senha: ")
}
print('acesso permitido')


















repeat{
    senha <- readline("Digite a senha: ")
    if(senha == "201030infinity"){
        print("Acesso permitito")
        break
    }else{
        print("Senha inválida")
    }
}