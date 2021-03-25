#TIPOS DE OBJETOS

#VARIABLES

x <- 5
2 * x + 3
pais <- "Colombia"
nchar(pais)

verdadero <- TRUE
falso <- FALSE

verdadero*verdadero
verdadero*falso
falso*falso

#VECTORES

edad <- c(15, 19, 13, NA, 20)
deporte <- c(TRUE, TRUE, NA, FALSE, TRUE)
comic_fav <- c(NA, "Superman", "Batman", NA, "Batman")

edad[3]
edad[-3]

comic_fav[c(2, 5)]
comic_fav[c(1,4)]

deporte[-3]


#MATRICES

mimatriz <- matrix(data=1:20, nrow=4, ncol=5, byrow=FALSE)

mimatriz

mimatriz[3, 4]

mimatriz[2, ]
mimatriz[, 5]

mimatriz[, -c(2, 4)]

mimatriz[-1, -3]  # Signo de menos para eliminar

#Arreglos

miarray <- array(data=letters[1:24], dim=c(3, 4, 2))

miarray[1, 3, 2]  # El orden es importante

miarray[,, 2]  # No se coloca nada en las primeras posiciones

miarray[, 3,]  # No se coloca nada en las primeras posiciones

#MARCOS DE DATOS

mimarco <- data.frame(edad, deporte, comic_fav)

mimarco 

mimarco$deporte  # Se recomienda si el nombre es corto

mimarco[, 2]  # Se recomienda si recordamos su ubicacion

mimarco[["deporte"]]

mimarco[c("deporte", "edad")]

mimarco[2:4, 1]

subset(mimarco, subset=deporte == FALSE)

subset(mimarco, subset=deporte == TRUE)

subset(mimarco, subset=edad >= 17)

subset(mimarco, subset=edad < 20, select=c('deporte', 'comic_fav'))

subset(mimarco, subset=edad < 20 & deporte == TRUE)

url <- 'https://raw.githubusercontent.com/fhernanb/datos/master/medidas_cuerpo'
dt1 <- read.table(url, header=T)
dim(dt1)  # Para conocer la dimensión de la base original

dt2 <- subset(x=dt1, subset=altura > 185 & peso > 80,
              select=c('sexo', 'edad', 'peso', 'altura'))


#LISTAS

set.seed(12345)
mivector <- runif(n=5)
matriz2 <- matrix(data=1:12, ncol=6)
milista <- list(E1=mivector, E2=matriz2, E3=mimarco)
