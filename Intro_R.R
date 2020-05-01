# Abrir R Studio

# Copiar este script completo en la pantalla de la izquierda-arriba en R Studio

# Seguir la siguiente explicación:

# 1. Limpiar la memoria antes de comenzar
rm(list=ls())

# 2. Ubicarse en el respectivo directorio de trabajo. Usar el menú de R Studio o usar el siguiente comando:

setwd("/Users/juliansoda/Desktop/Intro_R/")
getwd() # Esta función permite ver si estamos en la carpeta correcta
list.files() # Este comando permite ver que archivos hay en la carpeta.

# 3. Instalar y abrir los paquetes. Los paquetes son los programas escritos para que R haga operaciones complejas. Hay miles de programas. Para comenzar, usaremos el paquete "stats" para hacer operaciones estadísticas:

install.packages("stats") # este comando descarga el programa desde internet
library(stats) # este comando abre el programa.

# 4. R hace operaciones matemáticas sin problema:

2+2
3*4
15/3
((3+4)*5)/5
2^3
5 > 3

# 5. Las variables se pueden guardar como objetos, usando los símbolos "<-" o "->" "=":

x <- 2+2
y <- 3*4
z = ((3+4)*5)/5
M <- (x*y)^z

ls() # Este comando permite ver que objetos hay guardados en memoria.

# 6. Vectores. Un vector es la estructura de datos más sencilla en R. Un vector es una colección de uno o más datos del mismo tipo.

3
is.vector(3)
length(3)

1:10

# Vector numérico
c(1, 2, 3, 5, 8, 13)

# Vector de cadena de texto
c("arbol", "casa", "persona")

# Vector lógico
c(TRUE, TRUE, FALSE, FALSE, TRUE)

# Combinaciones de vectores:
mi_vector <- c(TRUE, FALSE, TRUE)
mi_vector <- c(mi_vector, FALSE)
mi_vector

mi_vector_1 <- c(1, 3, 5)
mi_vector_2 <- c(2, 4, 6)
mi_vector_3 <- c(mi_vector_1, mi_vector_2)
mi_vector_3

# vectorización de operaciones:

mi_vector <- c(2, 3, 6, 7, 8, 10, 11)
mi_vector + 2
mi_vector * 2
mi_vector > 7
mi_vector < 7
mi_vector == 7

# 7. Las funciones nos premiten hacer operaciones más complejas:
mean(medidas) -> promedio
sd(medidas) -> desviacion_estandar

# 8. Cuando no entendemos que hace una función o que variables debemos usar para que funcione, podemos usar la ayuda con "?" y "help()":
?mean
help("mean")
help(package = "stats") # o podemos ver toda la documentcaión de un paquete

# 9. Matrices (función "matrix")

# Creemos un vector numérico del uno al doce
1:12

# Pongámos los 12 números en una matriz sin especificar filas ni columnas
matrix(1:12)

# Tres filas y cuatro columnas
matrix(1:12, nrow = 3, ncol = 4)

# Cuatro filas y tres columnas
matrix(1:12, nrow = 4, ncol = 3)

# Propiedades de las matrices

mi_matriz <- matrix(1:12, nrow = 4, ncol = 3)
class(mi_matriz)

dim(mi_matriz) # me dice las dimensiones de mi matriz
mi_vector <- 1:12
dim(mi_vector) # la función dim no funciona si no hay más de una fila

# Podemos hacer operaciones con todos los valores de la matriz:

mi_matriz + 1
mi_matriz * 2

# 10. Data frames (tablas compuestas). Los data frames son estructuras de datos de dos dimensiones (rectangulares) que pueden contener datos de diferentes tipos, por lo tanto, son heterogéneas.

mi_df <- data.frame(
  "entero" = 1:4, 
  "factor" = c("a", "b", "c", "d"), 
  "numero" = c(1.2, 3.4, 4.5, 5.6),
  "cadena" = as.character(c("a", "b", "c", "d"))
)

mi_df
dim(mi_df)

# names() nos permite ver los nombres de las columnas
names(mi_df)

# Propiedades de un data frame

mi_df <- data.frame("nombre" = c("Armando", "Elsa", "Ignacio", "Olga"),
                    "edad" = c(20, 24, 22, 30),
                    "sexo" = c("H", "M", "M", "H"),
                    "grupo" = c(0, 1, 1, 0))

# Primero verifiquemos el resultado
mi_df
dim(mi_df)

# Podemos extraer columnas y filas usando corchetes y guardarlas en objetos
mi_df[1] -> nombres # Extrae la primer columna, incluyendo el nombre de la columna
nombres
mi_df[c(1, 3)]

mi_df[3,] # Extraer la fila 3
mi_df[ ,1] # Extraer columna 1 sin incluir el nombre del campo
mi_df[3, 3] # Extrae la información de la celda de la columna 3 y la fila 3.
mi_df[2:3, 3] # Extrae simultáneamente la información de las celdas de las filas 2 y 3 en la columna 3.
mi_df[1:2, c(2, 4)] # ????

# Podemos extraer información usando los nombres de las columnas:
mi_df["nombre"]
mi_df["grupo"]
mi_df[c("edad", "sexo")]
mi_df[c("sexo", "edad")]

# Podemos usar el signo de pesos "$" en vez del corchete:
mi_df$nombre
mi_df$"nombre"
class(mi_df$nombre)

###########################################################################
#               Ejercicio con datos reales                                #
###########################################################################

# Escriba al frente de cada comando que operación realizó:
# Para el ejercicio, vamos a usar datos florales de plantas del género Iris. Estos datos están guardados en la tabla llamada "Iris", la cual viene incluida en el paquete "stats":

iris
class(iris)
iris$Sepal.Length
mean(iris$Sepal.Length)
log(iris[1:4])
mean(log(iris$Sepal.Length))
iris[1:2]
iris[1:2, ]
iris[,1:2]
iris[4:5, c("Sepal.Width","Species")]
iris$Sepal.Length > 7.5
iris[iris$Sepal.Length > 7.5, ]
iris[iris$Sepal.Length > 7.5, 5]
iris[iris$Sepal.Length > 7.5, "Species"]
iris[iris$Sepal.Width < 3 & iris$Species == "setosa", ]
iris[iris$Petal.Width >= 5]

?subset
subset(x = iris, subset = Sepal.Length > 7.5)
subset(x = iris, subset = Sepal.Length > 7.5, select = c("Sepal.Length", "Species"))
subset(x = iris, subset = Sepal.Length > 7.5 & Sepal.Width == 3)
