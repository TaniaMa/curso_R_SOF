#####################
## Aula 1 - B�sico ##
#####################

#--------------------------------------------
# instalar pacotes ----
install.packages("tidyverse")

# carregar pacotes
library(dplyr) # forma 1
require(dplyr) # formar 2

#--------------------------------------------
# obter ajuda ----

help(log) # forma 1
?log      # forma 2

# identificar os argumentos das fun��es
args(log)

# exemplos de como operar fun��es
example(log)

#--------------------------------------------
# DICA: acessar atalhos no R
# alt + shift + k (atalho para os atalhos)
# ou Tools, Keyboard shortcut help

#--------------------------------------------
# Exemplo 1 ----

## Num�rico cont�nuo
num_dbl <- c(1, 2.8, 4.5, 6.3)

## Num�rico discreto
num_int = c(1L, 3L, 5L, 7L) 

## L�gico
log_vt <- c(TRUE, FALSE, TRUE, FALSE) 

## Texto
chr_vt <- c("Jo�o", "Zezinha", "Itamar", "Cristiane" )


# testes para os vetores
length(num_dbl)
is.vector(num_dbl)
is.numeric(num_dbl)
is.integer(num_dbl)
is.atomic(num_dbl)
is.double(num_dbl)
typeof(num_dbl)


# Compelir vetores a classes
as.character(1:10)

as.numeric(c(T, T, T, F, F, T))

as.integer(c(1.5, 1.6, 1.7, 1.8))

#--------------------------------------------
# Exerc�cio 1 (ver se��o 1) ---- 
# Criar os pr�prios vetores



#--------------------------------------------
# criando factors ----
fct <- c(1, 3, 4, 2, 1, 3, 2, 4, 5, 1, 2, 3, 4)
fct <- as.factor(fct)
class(fct)
is.numeric(fct)

letras <- c("a", "b", "c", "a", "c", "c", "d", "e", "e", "e", "e")
levels(letras)
as.factor(letras)

# o comando table permite classificar fatores
# al�m de elaborar tabelas de conting�ncia
table(letras)


#--------------------------------------------
# comandos matem�ticos no R - opera��es vetorizadas ----
# Multiplicar vetor
num_dbl * 5

# Logaritmo dos n�meros de um vetor
log(num_dbl)

# Soma dos valores de um vetor
sum(num_dbl)

# Soma cumulativa do vetor
## gera novo vetor
cumsum(num_dbl)

# Reverter valores do vetor
## gera novo vetor
rev(num_dbl)


#--------------------------------------------
# Exerc�cio 2 ----
## b�sico
1 + 2
2 - 5
5 / 8
8 * 20
5 ^ 2

# preced�ncia dos par�nteses
(25+(37*8)^1/2)/12

25+((37*8)^1/2)/12

## Logaritmo
log(100) # logar�tmo natural
log(100, base=10) # logar�timo base-10
log10(100) # equivalente
log(100, b=10)  # abrevia��o do argumento

## Raiz Quadrada
sqrt(144) # raiz quadrada
144^(1/2) # mesmo

## Valor Absoluto
abs(-50)

## Exponencial
exp(10)

## com vetores
x <- 1:20
x^2
x^1/2
x^x

# equacao 1
(x + x^2 + 2)*3

# equacao 2
2*x + 3*x^2 + x^3 + 2

## Opera��es matem�ticas com vetores l�gicos
logico <- c(T, F, F, T, T, F, F)
sum(logico)
mean(logico)
log(logico)
sqrt(logico)
logico * 5
(logico * 6 )^4

#--------------------------------------------
# Outros comandos �teis
# Arredondar valores
round(num_dbl)

# Arredondar a maior
ceiling(num_dbl)

# Arredondar a menor
floor(num_dbl)

#---------------------------------------------
# Aplicando multiplas fun��es de uma vez -----

num_dbl <- c(1, 2.3, 4.8, 5, 6.7, 8, 9, 10)

# Arredondar a m�dia do vetor num_dbl multiplicado por 3
round(mean(num_dbl * 3))

# Erro padr�o do quadrado do vetor num_dbl
sd(num_dbl ^ 2)

# Logaritmo da soma dos quadrados do vetor num_dbl 
log(sum(num_dbl^2))

# Vari�ncia da amostra
sum((num_dbl - mean(num_dbl))^2) / (length(num_dbl) - 1 ) 

# Vari�ncia da amostra (mesmo que o anterior)
var(num_dbl)


#--------------------------------------------
# Exerc�cio 3 ----
x<- c(1, 3, 4, 4, 5, 4, 8, 12, 11, 10, 7, 9)
mes_inicial <- c(1, 1, 1, 2, 6, 6, 6, 8, 8, 8, 8, 8)
mes_final <- c(12, 12, 12, 12, 10, 10, 10, 10, 9, 9, 9, 9)

# quantos casos de x pertencem a mes_inicial
sum( x == mes_inicial)

# quantos casos de x pertencem a mes_final
sum( x == mes_final)

# em quais casos o valor de x � maior que o mes final
x > mes_inicial
x > mes_final

# em quais casos n�o s�o iguais
x != mes_inicial
x != mes_inicial


#--------------------------------------------
# Exerc�cio 4 ----
## opera��es com conjuntos
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
y <- c(6, 7, 8, 9, 10, 11, 12, 13, 14, 15)

# uniao
union(x, y)

# intercess�o
intersect(x, y)

# diferen�a entre conjuntos
setdiff(x, y)
setdiff(y, x)
setdiff(x,c(1, 2))

# igualdade
setequal(x, y)

# � elemento?
is.element(x, y)
is.element(y, x)

# pertence (funcao muito util)
x %in% y
y %in% x

1 %in% x
x %in% 1

nome <- c("Pedro", "Maria", "Joaquina")

# joaquina pertence ao conjunto nomes?
"Joaquina" %in% nome

# quais elementos do conjunto "nome" cont�m joaquina?
nome %in% "Joaquina"

# � poss�vel somar os resultados
sum(nome %in% c("Joaquina", "Pedro"))

# Relembre os exemplos da escola
a <- c("Jo�o", "Maria", "Jos�", "Josefa")
b <- c("Mariana", "Jos�", "Joana", "Jo�o")

# Uni�o
union(a, b)
# Diferen�a entre conjuntos
setdiff(a, b)

# � elemento? Retorna valor l�gico
a %in% b
is.element(a, b)


#################################
## Sequencias e repeticoes #----
################################
?seq
?rep
# forma b�sica
1:10
seq(from = 1, to = 10)

# sequencia por regras
seq(from = 1, to = 10, by = 2.5 )
seq(1, 10, 2.5) # resumido

# como temos objetos, podemos fazer o seguinte
n <- 1000
t <- 7.5
seq(1, n, t)

# repeticoes
rep(5, 10)

rep(c(5, 4), 10, each = 2)

# repetir sequencia
rep(2000:2002, 2)

# repetir a mesma sequencia 
rep(2000:2002, 2, each = 3)

# repetir sequencia 1 vez 
rep(seq(2000, 2010, 1), each = 4)

# repetir texto
fruta <- c("laranja", "banana", "manga", 
           "maracuj�", "mam�o", "ameixa")

rep(fruta, 15)
rep(fruta, each = 2)
rep(fruta, c(1, 2, 3, 4, 5, 6))
rep(fruta, 1:6)
rep(fruta, rep(c(2,3), 3))

############
# Matrizes #
############
matriz_a <- matrix(1:12, nrow = 4, ncol = 3)
matriz_a
dim(matriz_a)

matriz_b <- matrix(1:12, nrow = 3, ncol = 4)
matriz_b
dim(matriz_b)

# transformar vetor em matriz
vetor_b <- 1:12
class(vetor_b)
dim(vetor_b) # n�o tem dimens�o pois � vetor

# qual a dimensao do vetor
?dim
# ent�o
dim(vetor_b)<- c(3, 4)
vetor_b
class(vetor_b)

# nomes das colunas e linhas matrizes
ncol(vetor_b)
nrow(vetor_b)

rownames(vetor_b) <- c("linha 1", "linha 2", "linha 3")
colnames(vetor_b) <- c("col 1", "col2", 'col3', "col4")  

vetor_b

##########
# Listas #
##########

lista<- list(x = 1:5, 
             "Curso de R", 
             c(TRUE, FALSE), 
             c(1.5, 1.6, 1.7, 1.8),
             matriz = matrix(1:12, 3, 4), 
             lista2 =list(letters, LETTERS))

lista
# pede a estrutura da lista
str(lista)

# ver elementos da lista

lista[1]
lista[2]
lista[6]

# � poss�vel utilizar dois [[ para acessar elementos individuais da lista

lista[[6]][1]
lista[[6]][2]

# o mesmo pode ser obtido com o $
lista$lista2[1]
lista$lista2[2]

##############
# Data Frame #
##############
df <- data.frame(nome =c("Josias", "Joaldo", "Josefa", 
                         "Josie", "Josimar", "Janeide"),
                 idade = c(42L, 28L, 34L, 27L, 55L, 35L),
                 tem_filhos= c(TRUE, FALSE, FALSE, 
                               TRUE, TRUE, FALSE), 
                 renda = c(1457.2, 954.7, 1600.8, 900.5, 600.4, 2300.7))
print(df)

## Data Frame: acessando elementos com o $
df$idade
df$nome
df$tem_filhos

## Data Frame: acessando seus elementos com os []
df[ , ] # todo data.frame
df[1, ] # linha 1
df[ , 2] # coluna 2
df[ 1, 2] # linha 1, coluna 2


## estrutura
str(df)

# m�dia
mean(df$idade)
sum(df$idade)/5
# mediana
median(df$idade)
# maximo
max(df$idade)

# minimo
min(df$idade)

# log
log(df$idade)

quantile(df$idade)


## Data Frame: adicionando elementos
df$qtd_filhos <- c(3, 4, 1, 3, 6, 2)

# se voce tentar colocar mais elementos que o banco, dar� erro
df$qtd_filhos2 <- 1:10

# mas � poss�vel colocar n�meros unicos
df[, "seis"] <- 6

# e tamb�m character �nicos 
df[, "cidade"] <- "Bras�lia"

# al�m de utilizar sequencias
df$grupo <- rep(c(1, 2), each = 3)


#--------------------------------------------
# Exercicio em sala
# os pacotes do R j� carregam bases de dados
library(tidyverse)
# verificar dados j� existentes no R. cada pacote tem algumas bases
data()


# selecionar mpg
mpg

# atribuir a um novo objeto tb chamado mpg
mpg <- mpg

# Exercicio com mpg ----
# qual a classe de mpg
class(mpg)

# estrutura dos dados
str(mpg)

## extrair elementos
# coluna 1
mpg[1]
# linha 1
mpg[1, ]
# coluna 1
mpg[, 1]


# linha 2, coluna 2
mpg[2, 2]

#--------------------------------------------
# remover itens do global environment
remove(df) # forma 1
rm(df)     # forma 2

# remover todos os objetos global environment
rm(list = ls())


