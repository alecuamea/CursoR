#comando para pedir ayuda

help.start()

5+7

#operador asignacion

x <- 5+7

y <- x-3

#x y y son vectores de longitud 1

c(1 1 9 3 14)

#la sintaxis obliga a separar
#elementos por comas sin importar los espacios

c(1,1,9,3,14)

z <- c(1,1,9,3,14)

length(x); length(y); length(z)


?c
#funcion para combinar valores en un vector

z

c(z,555,z)

c(x,y,z)

#operaciones aritmeticas

z*2+10

#guardar en una variable
#a una funcion que contenga otra funcion

raiz <- sqrt(z-1)

div <- z/raiz


#reciclaje

c(1,2,3,4)+c(0,10) #son vectores de diferente tamaño
c(1,2,3,4)+c(0,10,0,10)#recicla los elementos, la
#longitud de un objeto mayor no es múltiplo de uno menor
