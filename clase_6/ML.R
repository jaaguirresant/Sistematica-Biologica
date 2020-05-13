###################################################################################
###############  Inferencia filogenética con Máxima Verosimilitud  ################
###################################################################################
# Ejercicio modificado de Schliep (2019): https://cran.r-project.org/web/packages/phangorn/vignettes/Trees.pdf

############# A. Preparación del espacio de trabajo  ###########################

# Limpiar la memoria antes de comenzar

rm(list=ls())

# Asignamos la carpeta en la que vamos a trabajar

setwd("directorio de trabajo") # en mi caso sería: setwd("/Users/julian/Desktop/parsimonia/"). Otra opción es usar el menú de R Studio (session -> set working directory -> choose directory).

# ******IMPORTANTE*********: En la carpeta de trabajo debe estar la matriz de caracteres en formato NEXUS o Phyllip

######################### B. Abrir los paquetes  ###############################

# Para este ejercicio usaremos los paquetes ape y phangorn.  

library(ape) 
library(phangorn)

####################### C. Cargar la matriz de datos  ###########################

# Cargamos la matriz de ADN en formato Nexus con la función "read.phyDat", ya que phangorn requiere que la matriz sea de clase phyDat.

Primates_ADN <- read.phyDat("ADN.nex", format = "nexus") # esta matriz contiene secuencias de ADN simuladas para un grupo representativo de primates.

class(Primates_ADN) # confirmemos que la matriz sea de clase "phyDat"
Primates_ADN # Visualicemos la matriz
str(Primates_ADN) # la función "str" permite visualizar las características del objeto con más detalle.

####################### C. Escogencia de modelos de sustitución  ########################

# La escogencia de modelos evolutivos de sustitución es el primer paso para la inferencia filogenética paramétrica. Para ver que modelo encaja mejor con nuestra matriz de datos, es necesario estimar la verosimilitud de nuestros datos bajo cada modelo, usando un árbol de referencia con longitud de ramas conocida. 

# Para calcular la verosimilitud de nuestro datos bajo cada modelo, usaremos la función "modelTest", la cual usa un árbol de NJ como árbol de referencia para hacer las cálculos de verosimilitud.

?modelTest # como siempre, es importante explorar como trabaja la función
mt <- modelTest(Primates_ADN)
print(mt) # Exploremos los resultados.

# Pregunta 1: Viendo la tabla de resultados, ¿cómo puedo determinar cual es el mejor modelo que encaja con mis datos?¿Cuál es el mejor modelo?

# *****AYUDA***** El siguiente bloque de código podría ayudar a responder la pregunta 1.

mt[order(mt$AICc),]
mejor_modelo <- mt$Model[which.min(mt$AICc)]
mejor_modelo

# Finalmente, para poder especificar los detalles del modelo elegido antes de hacer cualquier análisis, es necesario tener los valores estimados de los parámetros que calculó "modelTest":

env <- attr(mt, "env")
ls(env=env)
HKG_G <- get("HKY+G", env) 
eval(HKG_G, env=env) -> resultados_modelo
print(resultados_modelo)

# Pregunta 2: ¿Cuál es la verosimilitud estimada del árbol de NJ bajo este modelo?

# Pregunta 3: ¿Este modelo supone que los nuclétidos están en las mismas proporciones iniciales? Si la respuesta es no, ¿Cuáles son las proporciones de base estimadas por modelTest?

# Pregunta 4: Bajo el modelo escogido, ¿son las tasas estimadas de transiciones iguales a las tasas de transversiones?

# Pregunta 5: ¿modelTest sugirió que en la matriz hay secciones de las secuencias que evolucionan a tasas diferentes? Si la respuesta es si, ¿Cuántas categorías de tasas diferentes sugiere modelTest?

####################### D. Exploración de datos y árbol inicial  ######################

# Al igual que la parsimonia, la máxima verosimilitud requiere un árbol inicial para comnezar los análisis, ya que este método usa los mismos métodos heurísticos para la búsqueda de árboles. En este caso inferiremos un árbol de distancia con UPGMA y otro con NJ para la exploración de datos y también para usar uno de ellos como árbol inicial en los análisis de Máxima Verosimilitud.

dm <- dist.ml(Primates_ADN) # Generamos la matriz de distancias (corregidas usando el modelo JC69). También pueden generarlo con el modelo escogdo por modelTest.
arbolUPGMA <- upgma(dm)
root(arbolUPGMA, outgroup="Lemur_catta") -> UPGMA_enraizado
arbolNJ <- NJ(dm)
root(arbolNJ, outgroup="Lemur_catta") -> NJ_enraizado

# comparemos los resultados:
layout(matrix(c(1,2), 2, 1), height=c(1,2))
par(mar = c(0,0,2,0)+ 0.1)
plot(ladderize(UPGMA_enraizado), main="UPGMA")
plot(ladderize(NJ_enraizado), main="NJ")

####################### E. Inferencia de la Máxima Verosimilitud  ######################

# Usaremos dos funciones para las inferencias: "pml", "optim.pml". "pml" simplemente calcula la verosimilitud en un árbol de topología y ramas fijas usando un modelo especificado por el usuario. Por otro lado, la función "optim.pml" permite optimizar los parámetros (p.e. topología, longitud de ramas, etc) para buscar el árbol con la máxima verosimilitud. 

### 1. Cálculo de la verosimilitud en un árbol fijo de ramas conocidas con "pml" #######


?pml # primero veamos las características de la función

# Para ver como funciona la función "pml", estimemos la verosimilitud del árbol de NJ bajo el modelo JC69:

verosimilitudNJ <- pml(arbolNJ, data=Primates_ADN) # JC69 es el modelo preestablecido 
verosimilitudNJ # observemos los resultados

# Pregunta 6: ¿Cuál es la verosimilitud del árbol de NJ?

# Pregunta 7: viendo los resultados, ¿cómo identifico que efectivamente la estimación se hizo bajo el modelo de JC69?

# Repitamos el ejercicio, pero esta vez con el árbol de UPGMA:

verosimilitudUPGMA <- pml(arbolUPGMA, data=Primates_ADN) # JC69 es el modelo preestablecido 
verosimilitudUPGMA # observemos los resultados

# Pregunta 8: ¿Este árbol tiene mejor o peor verosimilitud que el árbol de NJ? ¿A qué se debe esta diferencia?

############# 2. Búsqueda de la máxima verosimilitud con "optim.pml" #################

# La función "optim.pml" nos permite optimizar las longitudes de las ramas en un árbol con topología fija. Intentemos hacer esto con el árbol de NJ:

max_verosim_JC <- optim.pml(verosimilitudNJ) # En este caso, la función necesita, además del árbol, los valores iniciales de todos los parámetros (p.e longitudes de ramas, frecuencias iniciales de las bases nitrogenadas, etc). Por esto, el objeto debe ser de clase "pml" y no simplemente un filograma.

max_verosim_JC # veamos los resultados. Fijarse bien en el valor de la verosimilitud y en la estimación de los parámetros.

logLik(max_verosim_JC) # veamos solamente el valor de la máxima verosimilitud

# Pregunta 9: ¿Mejoró la verosimilitud con respecto al árbol de NJ que tenía un valor fijo de longitud de ramas (arbolNJ)? ¿Por qué mejoró este valor?

# También podemos optimizar otros parámetros si especificamos un modelo más complejo, por ejemplo GTR + gamma + I:

max_verosim_GTR_gamma_I <- update(verosimilitudNJ, k=4, inv=0.2) # La función "update" nos permite usar el árbol de máxima verosimilitud del análisis anterior como árbol inicial. También nos permite adicionar parámetros iniciales de la variación de la secuencia de ADN con los argumentos "k" e "inv". Los valores "k=4 y inv=0.2" son los estimados inciales sugeridos por modelTest de las categorías del parámetro gamma (k) y de la proporción de sitios invariables  (inv).

max_verosim_GTR_gamma_I # veamos ahora que este objeto nuevo que creamos.

# Pregunta 10: ¿Que diferencias encuentra con respecto a los parámetros estimados de la máxima verosimilutud bajo el modelo JC69 (ver objeto "max_verosim_JC")

# Ahora usaremos el objeto de clase pml que acabamos de crear para inferir el árbol de la máxima verosimilitud bajo el modelo GTR + gamma + I:

max_verosim_GTR_gamma_I <- optim.pml(max_verosim_GTR_gamma_I, model="GTR", optInv=TRUE, optGamma=TRUE, rearrangement = "NNI", control = pml.control(trace = 0))
max_verosim_GTR_gamma_I

# Pregunta 11: ¿Es mejor la verosimilitud de este árbol que la inferida con JC69?¿Cuál es la proporción óptima estimada de sitios invariables en la matriz? ¿Son las tasas de las transversiones iguales o diferentes a las de las transiciones? ¿Cuáles son las frecuencias iniciales estimadas de las bases nitrogenadas?

# Para ver el árbol, debemos extraerlo usando "$" de la siguiente manera:
str(max_verosim_GTR_gamma_I)
max_verosim_GTR_gamma_I$tree 

# Dibujemos el árbol:
root(max_verosim_GTR_gamma_I$tree,outgroup="Tarsius_syrichta")->arbol_GTR_gamma_I_enraizado
plot(arbol_GTR_gamma_I_enraizado)

##### EXTRA: bootstrap #######

bs = bootstrap.pml(max_verosim_JC, bs=100, optNni=TRUE, control = pml.control(trace = 0))
par(mfrow=c(2,1))
par(mar=c(1,1,3,1))
plotBS(midpoint(max_verosim_JC$tree), bs, p = 50, type="p")
title("a)")
cnet <- consensusNet(bs, p=0.2)
plot(cnet, "2D", show.edge.label=TRUE)
title("b)")
