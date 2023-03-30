#Leia o dataset ibge_populacao.csv usando o R;
ibge <- read.csv('https://raw.githubusercontent.com/natorjunior/db-atividades/main/ibge_populacao.csv')



ibge



# Separe apenas estado do Ceará;


ceara <- ibge[ibge == 'CE',]



# Filtre apenas o município de Fortaleza;
#2304400 -> id de fortaleza



ceara_fortaleza <- ceara[ceara$id_municipio == 2304400]


ceara_fortaleza
