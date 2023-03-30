
dados <- read.csv('Jogadores.csv')
dados

#Pegar as primeiras 6 linhas do DataFrame
head(dados)
```
```{r}
#Traz as 6 ultimas linhas
tail(dados)
```

```{r}
#Faz uma analise geral de todas as colunas trazendo dados estátisticos
summary(dados)
```
```{r}
#Maneiras de se extrair uma coluna
dados$Nome.completo.do.jogador
dados[1]
dados['Altura.em.cm']
```

```{r}
mean(dados$Altura.em.cm)
```
```{r}
lista <- c(50,80,11,1,2,20)
lista <- sort(lista)
lista
median(lista)
```
```{r}
median(dados$Altura.em.cm)
mean(dados$Altura.em.cm)
```
```{r}
#Trazer a frequência dos dados 
table(dados$Time.que.o.jogador.participou)
```
```{r}
dados[dados$Time.que.o.jogador.participou == 'Cruzeiro' & dados$Altura.em.cm > 1.60,]
```
```{r}
hist(dados$Altura.em.cm)
```
```{r}
boxplot(dados$X.Peso.em.kg)
```
```{r}
dados[dados$X.Peso.em.kg > 100,]
```
```{r}
dados['nova_coluna'] = dados$X.Peso.em.kg * 2
```

```{r}
#IMC -> peso / altura ^ 2
#Crie uma nova coluna com o IMC dos jogadores
dados['IMC'] <- dados$X.Peso.em.kg / dados$Altura.em.cm ^ 2
dados
```
```{r}

```


