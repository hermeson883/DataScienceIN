
```{r}
covid <- read.csv('https://raw.githubusercontent.com/natorjunior/db-atividades/main/casos_covid_ce.csv')
covid
```
```{r}
sd(covid$quantidade) # Desvio Padrão
mean(covid$quantidade) #Média quantidade
```
```{r}
hist(covid$quantidade)
```
```{r}
boxplot(covid$mediaMovel)
covid[covid$mediaMovel < 20,]
```
```{r}
boxplot(covid$quantidade)