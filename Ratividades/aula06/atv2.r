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