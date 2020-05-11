################################################################################
###############  Inferencia filogenética con Máxima Parsimonia  ################
################################################################################

############# A. Preparación del espacio de trabajo  ###########################

# Limpiar la memoria antes de comenzar

rm(list=ls())

# Asignamos la carpeta en la que vamos a trabajar

setwd("directorio de trabajo") # en mi caso sería: setwd("/Users/julian/Desktop/parsimonia/"). Otra opción es usar el menú de R Studio (session -> set working directory -> choose directory).

# ******IMPORTANTE*********: En la carpeta de trabajo debe estar la matriz de caracteres en formato NEXUS

################## B. Instalar y abrir los paquetes  ###########################

# Para este ejercicio usaremos los paquetes ape y phangorn. El siguiente grupo de comandos descarga estos paquetes y los abre. Para bajar los paquetes es necesario tener conexión a internet.  

install.packages("ape") # instalar este paquete. Ignorar este comando si ya está instalado
install.packages("phangorn") # instalar este paquete. Ignorar este comando si ya está instalado.

library(ape) # abrir paquete "ape".
library(phangorn) # abrir paquete "phangorn".

####################### C. Cargar la matriz de datos  ###########################

# Cargamos la matriz de ADN en formato Nexus con la función "read.phyDat", ya que phangorn requiere que la matriz sea de clase phyDat.

Primates_ADN <- read.phyDat("ADN.nex", format = "nexus") # esta matriz contiene secuencias de ADN simuladas para un grupo representativo de primates.

class(Primates_ADN) # confirmemos que la matriz sea de clase "phyDat"
Primates_ADN # Visualicemos la matriz
str(Primates_ADN) # la función "str" permite visualizar las características del objeto con más detalle.

# Pregunta 1: ¿Cuántos taxones y caracteres hay en la matriz?

###################### D. Exploración preliminar de los datos ##################

# Antes de hacer los análisis de parsimonia, podemos generar un árbol rápido usando métodos de distancia (UPGMA o Neighbor-Joining). Aunque se puede trabajar con las distancias crudas, es mejor transformarlas a distancias evolutivas usando un modelo evolutivo de sustitución (veremos esto en detalle en la próxima clase). Para efectos demostrativos, usaremos el modelo "F81" y la función "dist.ml" del paquete phangorn para construir la matriz de distancias corregidas: 

?dist.ml # primero entendamos que argumentos nos pide la función "dist.ml"
dna_dist <- dist.ml(Primates_ADN, model="F81") # Esta es la matriz de distancias corregidas bajo el modelo F81
str(dna_dist)

# Ahora generemos el fenograma con UPGMA usando la función "upgma":
Primates_UPGMA <- upgma(dna_dist) # Guardamos el fenograma en el objeto "Primates_UPGMA" 
plot(Primates_UPGMA, main="UPGMA") # Dibujemos el fenograma

# y generemos uno con Neighbor-Joining usando la función "NJ":
Primates_NJ  <- NJ(dna_dist) # Guardamos el fenograma en el objeto "Primates_NJ"
plot(Primates_NJ, main = "Neighbor Joining") # Dibujemos el fenograma

# Pregunta 2: ¿Que diferencias observa entre el árbol de UPGMA y el de Neighbor-Joinig?

###################### E. Inferencia con Máxima Parsimona ##################

# Usaremos las funciones "parsimony", "optim.parsimony" y "pratchet" para optimizar los datos en un árbol específico o para inferir el o los árboles más parsimoniosos a partir de la matriz de datos.

# Primero. Optimicemos los datos de la matriz en los árboles de UPGM y NJ para saber cual es su longitud. Para esto usaremos la función "parsimony":

?parsimony # Siempre es buena idea entender que hace la función y que argumentos pide.

parsimony(Primates_UPGMA,Primates_ADN)
parsimony(Primates_NJ,Primates_ADN)

# Pregunta 3: ¿Exactemente, qué operación realizó la función "parsimony"

# Pregunta 4: ¿Cuál de los dos árboles es el más parsimonioso?

# Segundo. Infiramos el árbol (o árboles) más parsimonioso(s) a partir de la matriz de datos, usando el árbol de NJ como árbol inicial. Para esto usaremos la función "optim.parsimony"

?optim.parsimony # De nuevo: vale la pena entender como funciona la función

Primates_optim <- optim.parsimony(Primates_NJ, Primates_ADN)
plot(Primates_optim)
Primates_optim
str(Primates_optim)

# Pregunta 5: ¿Por qué la función requiere un árbol como el de NJ para comenzar el análisis?

# Pregunta 6: ¿Cuántos árboles más parsimoniosos se encontraron?

# Pregunta 7: Esta operación usó el método de la parsimonia de fitch en sus opciones preestablecidas. ¿Que significa esto?

# Pregunta 8: Esta operación usó el método "SPR" en sus opciones preestablecidas. ¿Que significa esto?

# Pregunta 9: Esta operación usó el argumento "cost=NULL" para establecer el pesaje de los caracteres. ¿Que significa esto?

# Finalmente, para matrices con muchos caracteres (>1000) y más de 100 terminales, se puede usar la metodología Ratchet. Para esto se usa la función "pratchet"

?pratchet # De nuevo: vale la pena entender como funciona la función

Primates_pratchet <- pratchet(Primates_ADN)
plot(Primates_pratchet)
Primates_pratchet

# Pregunta 10: ¿Cuántos árboles más parsimoniosos se encontraron?

# Pregunta 11: ¿Encontraron alguna diferencia en los resultados de los árboles de distancia con los de parsimonia?¿Cuáles? 

# *****AYUDA**** Para facilitar la comparación entre árboles, es mejor comparar los árboles enraizados. Para esto, pueden usar la función "root" para enraizar el árbol especificando el grupo externo:

?root
arbol_enraizado_ratchet <-root(Primates_pratchet, outgroup="Lemur_catta")
plot(arbol_enraizado_ratchet)

# Los árboles se pueden guardar en un archivo newick para análisis posteriores

write.tree(Primates_pratchet, file="ratchet_Primates.tre")
