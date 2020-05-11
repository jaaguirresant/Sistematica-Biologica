# Inferencia filogenética con Máxima Parsimonia

#  Para este ejercicio usaremos el archivo ADN.nex y los paquetes ape, phangorn y seqinr.

setwd("working directory") 
library(ape)
library(phangorn)
library(seqinr)

# 2. Cargamos la matriz de ADN en formato Nexus con la función "read.phyDat", ya que phangorn requiere que la matriz sea de clase phyDat.

Primates_ADN <- read.phyDat("ADN.nex", format = "nexus")
class(Primates_ADN)

# 3. Antes de hacer los análisis de parsimonia, podemos generar un árbol rápido usando métodos de distancia. Para generar una matriz de distancias corregidas, debemos buscar el módelo evolutivo que mejor se ajuste a nuestra matriz de datos con la función "modelTest".

mt <- modelTest(Primates_ADN)
print(mt)
dna_dist <- dist.ml(Primates_ADN, model="F81") # Esta es la matriz de distancias corregidas

# Generamos el fenograma con UPGMA primero
Primates_UPGMA <- upgma(dna_dist)
plot(Primates_UPGMA, main="UPGMA")

# y generamos uno con Neighbor-Joining
Primates_NJ  <- NJ(dna_dist)
plot(Primates_NJ, main = "Neighbor Joining")

# 4. Usaremos ahora sí las funciones "parsimony", "optim.parsimony" y "pratchet" para inferir el o los árboles más parsimoniosos a partir de la matriz de datos.

# 4.1. Una opción sería calcular la longitud de los árbolde de UPGMA y NJ para ver cual es más parsimonioso. Para esto usamos la función "parsimony"

parsimony(Primates_UPGMA,Primates_ADN)
parsimony(Primates_NJ,Primates_ADN)

# ¿Cuál de los dos árboles es el más parsimonioso?

# 4.2. Otra opción es inferir los árboles a partir de los datos, usando los métodos tradicionales con la función "optim.parsimony"

Primates_optim <- optim.parsimony(Primates_NJ, Primates_ADN)
plot(Primates_optim)
Primates_optim

# ¿Por qué la función requiere un árbol como el de NJ para comenzar el análisis?

# Explore la función "optim.parsimony" e identifique como se pueden cambiar los parámetros de búsqueda y el número de repeticiones de los análisis. Escriba un breve sumario de este ejercicio

# ¿Cuántos árboles más parsimoniosos se encontraron?

# 4.3. Finalmente, para matrices con muchos datos y más de 100 terminales se puede usar la metodología Ratchet. Para esto se usa la función "pratchet"

Primates_pratchet <- pratchet(Primates_ADN)
plot(Primates_pratchet)
Primates_pratchet

# ¿Cuántos árboles más parsimoniosos se encontraron?

# Compare los resultados de los árboles de distancia con los de parsimonia 

# ¿Que diferencias encuentra?

# Los árboles se pueden guardar en un archivo newick para análisis posteriores

write.tree(Primates_pratchet, file="ratchet_Primates.tre")
