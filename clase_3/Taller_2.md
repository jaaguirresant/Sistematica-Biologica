# TALLER HOMOLOGÍA PRIMARIA Y CONSTRUCCIÓN DE MATRICES

La matriz de caracteres es el principal requisito para utilizar cualquier programa computacional de inferencia filogenética. Esta matriz es simplemente una tabla cuyas filas coresponden a los taxones, las columnas a los caracteres individuales y las celdas contienen el estado de caracter codificado. Este taller busca que los estudiantes aprendan a construir estas matrices de manera adecuada y dejarlas listas para ser analizadas por programas de computador.

#

Realizar el siguiente taller en los siguientes grupos de trabajo:

|Grupo No.|Integrantes|Enlace videollamada|
|---|---|---|
Grupo_1|Deisy Marcela Angarita Ospina, Jose Luis Camargo Sarmiento, Nixon Andres Castillejo Lozano, Leyla Alejandra Castillo Múñoz, Ángela Patricia Ceballos Torres|https://meet.google.com/txm-noak-kxe|
Grupo_2|Sergio Ivan Cohecha Claros, Diana Marcela Daza Gacha, Ivan Andrés Gallego Benavides, David Ricardo Gamarra Cardona, María Alejandra Pinto|https://meet.google.com/znt-nkgk-spt|
Grupo_3|Nicolas David Gutierrez Rubiano, Juan Camilo Gutierrez Toro, Sara Hernández Acosta, Laura Milena Hernandez Hernandez, Kevin Stiven Nonsocua Triviño, Jorge David Zabala Castro|https://meet.google.com/fmm-vgjb-jfa|
Grupo_4|Sebastian Felipe Ramirez Garavito, Juan Pablo Rueda Ramírez, Anggi Yulieth Solano Moreno, Naren Mauricio Tellez Carretero, Luis Eduardo Vargas Moreno|https://meet.google.com/vja-tcaj-tzk|

#

# PARTE 1: Construcción de matriz con datos morfológicos

1. Cada grupo deberá hacer una sencilla pregunta de investigación sobre las relaciones filogenéticas de cualquier grupo de seis organismos vivos de fácil observación, siendo uno de ellos el grupo ajeno (por ejemplo: las plantas de sus casas, insectos del patio, o fotos de organismos en internet). 

2. Una vez planteada la pregunta y escogidos los taxones, deberán consturir una matriz morfológica de 10 caracteres usando el criterio de homología primaria y las estrategias de codificación de caracteres explicadas en clase.  

3. Como resultado de este ejercicio, deben crear y presentar las siguientes tres diapositivas en el documento de GoogleSlides (https://docs.google.com/presentation/d/1lAsG4xm2AaOM0rb-HYZTr-s6rTFXqWbVz1RKaQ2VRoc/edit?usp=sharing): (1) la pregunta y la escogencia de taxones; (2) la tabla de caracteres y (3) la matriz. 

#

# PARTE 2: Matrices con datos de secuencias de ADN

Esta parte del taller es para realizar en casa y subir antes del próximo martes al Drive del curso.

## Formatos

Aunque las matrices serían muy fácil de elaborar en una tabla de Excel, este formato no es recomendado, ya que tienen muchos caracteres de formato escondido que los programas de inferencia filogenética no pueden reconocer. Por esta razón, dichos programas exijen que la matriz de caracteres esté en el formato más simple posible. Para esta clase vamos a explorar los tres formatos más populares para construir y almacenar matrices de datos de ADN: Fasta, Nexus, Phyllip y TNT. A continuación se describen los pasos a seguir:

1. Familiarizarse con los elementos de los archivos para cada formato.

Abrir en un editor de texto los siguientes archivos: [ADN.fasta](/clase_3/ADN.fasta), [ADN.tnt](/clase_3/ADN.tnt), [ADN.nex](/clase_3/ADN.nex), [ADN.phy](/clase_3/ADN.phy).

Responda las siguientes preguntas para todos los formatos:

        a. ¿Cual de los archivos contiene una línea de apertura para indicar el tipo de archivo? ¿Cuál es en cada caso?

        b. ¿Cómo indicar cuantos taxones hay en la matriz?

        c. ¿Cómo indicar cuantos caracteres hay en la matriz?

        d. ¿Cómo se indica el tipo de caracteres de la matriz (p.e. morfológico, ADN, etc)?

        e. Para el formato NEXUS: Explique la información de los bloques "Begin Taxa", "Begin characters" y "Begin data"

        f. ¿Que caracter y/o palabra se usa para delimitar el final del documento? 

        g. ¿Que otra información adicional indentificó en el cada archivo?


Más información sobre el formato NEXUS: [Aquí](http://informatics.nescent.org/w/images/8/8b/NEXUS_Final.pdf)

Más información sobre el formato TNT: [Aquí](http://phylo.wikidot.com/tnt-htm)

Más información sobre el formato PHY: [Aquí](http://evolution.genetics.washington.edu/phylip/doc/main.html#inputfiles)

## Construcción de una matriz a partir de datos de GenBank

2. Bajar de GenBank 10 secuencias de ADN del gen Cyt b de cualquier grupo de animales de su interés en formato fasta. Describa el contenido de este archivo. (Se recomienda abrir este archivo en un editor de texto como notepad++).

3. Edite los nombres de los taxones para evitar nombres muy largos. Explique su estrategia para que el nombre del taxón siga siendo informativo, en caso de que tenga que volver a GenBank para revisar su informción original.

4. Alinee las secuencias usando Mafft (https://mafft.cbrc.jp/alignment/server/) y guarde nuevamente el alineamiento en formato fasta, nexus y Phylip. Subir estas matrices al Drive del curso.

5. ¿A qué equivale el proceso de alineamiento secuencias hecho por Mafft en comparación con ejercicio de codificación de caracteres morfológicos de la PARTE 1 de este taller?

## Ejercicios avanzados (OPCIONALES)

6. Paso a paso para generar matrices en Mesquite

Escoja seis organismos de su interés (5 del grupo interno y 1 grupo ajeno), construya una matriz de cinco caracteres homólogos y guárdela en los formatos TNT, NEXUS y PHYLIP. A continuación se encuentran las instrucciones básicas para construir esta matriz en Mesquite:

a. Abrir Mesquite.

b. En el menú superior seleccionar File, New. Una ventana aparecerá.

c. Darle nombre al proyecto (p.e. Matriz_ejercicio.nex). Es importante que el archivo tenga la extensión .nex para que Mesquite (y otros programas) reconozcan este archivo como una matriz de datos. Hacer click en Save.

d. Una ventana llamada “New File Options” se abrirá.

   - Click en cuadro “Name” y darle un nombre (p.e. morfología).
   
   - Click en “Number of Taxa” y poner el número de taxones terminales (cinco en nuestro caso). Este número puede cambiarse después.
   
   - Seleccionar la caja “Make Character Matrix”. La caja “Make Taxa Block” también debe estar seleccionada. Click OK.
   
e. Una ventana llamada “New Character Matrix se abrirá.

   - Darle un nombre a la matriz en la caja de texto “p.e. Ejercicio”.
   
   - Ingresar el número de caracteres (en nuestro caso: 5).

   - Seleccionar “Standard Categorical Data”. Click OK.

f. Explorar las opciones de esa ventana.

g. Ingresar nombres a los taxones y caracteres.

   - Doble click a taxón 1 en la primera fila de la matriz. Ingresar el nombre del taxón. Presionar ENTER.
   
   - Doble click a la primera columna de la matriz y renombrar el carácter.
   
   - Para adicionar caracteres o taxones adicionales, seleccionar las herramientas Add Characters o Add Taxa en el menú de la izquierda. Para eliminar, basta seleccionar y presionar DELETE.
   
h. Ingresar datos.

   - Todos los datos comienzan como “?” para denotar que es información faltante o desconocida.
   
   - Ingresar manualmente los datos con la herramienta Edit Tool o haciendo doble click en la celda.
   
   - Ingresar estados codificados de los caracteres (0, 1, 2…etc).
   
   - Si quiere describir cada estado: seleccionar Show Matrix Info en la esquina inferior izquierda de la ventana (cualquier modificación es solo visual, no afecta la codificación de la matriz).
   
   - Guardar con Save.
   
i. Exportar la matriz a diferentes formatos.

   - File, Export y escoger el formato.

6. Generar y subir matrices en R

Sin duda, R es la mejor plataforma para trabajar con datos filogenéticos. Por esto es importante familiarizarse con esta plataforma y entender como trabajar con las matrices desde allí. Para este ejercicio no es necesario tener destrezas de programación, pero si recomienda estar familiarizado con elementos básicos de sintaxis en R. Para más información, [esta guía básica es útil](https://cran.r-project.org/doc/contrib/rdebuts_es.pdf).

#### a. Construya su matriz manualmente en R, siguiendo la siguiente guía:

- Abra R Studio

- Úbiquese en el directorio de trabajo:

```
setwd("working directory")
#En mi computador sería algo así: setwd("~/Google Drive/UNAL/Clases/Sistemática y Nomenclatura/2020-1/Clase 1")

```

- instale y abra los siguiente paquetes:

```
install.packages("ape")
install.packages("phangorn")
install.packages("Claddis")
library(ape)
library(phangorn)
library(Claddis)

```

- Crear la matriz de 5 taxones y 5 caracteres con la función "matrix". Debe nombrar las especies con el argumento "dimnames" usando guión al piso en vez de espacios. Seguido a esto, debe hacer la lista de los caracteres. Siga el siguiente ejemplo:

```
Matriz_manual <- matrix(
c(0, 0, 0, 1, 0,  #Taxon_1
  1, 1, 1, 0, 0,  #Taxon_2
  1, 1, 0, 0, 1,  #Taxon_3
  1, 0, 0, 1, 1,  #Taxon_4
  1, 1, 0, 1, 1), #Taxon_5
nrow = 5, ncol = 5, byrow = TRUE, dimnames = list(c('Taxon_1', 'Taxon_2','Taxon_3','Taxon_4','Taxon_5'),
c('Caracter_1', 'Caracter_2', 'Caracter_3','Caracter_4', 'Caracter_5')))

```

- Visualizar la matriz:

```
Matriz_manual
class(Matriz_manual)
```

- Para que la matriz se pueda guardar en formato nexus, se debe convertir a un objeto de clase "phyDat". Al asignar type=USER, se le puede indicar a la función que nuestros datos son binarios (0 y 1):

```
mi_matriz <- as.phyDat(Matriz_manual, type="USER", levels = c(0,1))
class(mi_matriz)

```

- Guardar el archivo en formato Nexus con la función "read.nexus.data

```
write.nexus.data(mi_matriz, "mi_matriz_en_R.nex", format= "standard", datablock=FALSE)
```


#### b. Leer un archivo que contiene una matriz en formato Nexus

- Asegúrese de que las matrices del comienzo de este taller están en el directorio de trabajo.

- Las matrices de ADN se leen fácilemente con las funciones "read.DNA (para archivos fasta) y "read.nexus.data" (para archivos nexus). Por ejemplo: 

```
matriz_ADN <- read.nexus.data("ADN.nex")
matriz_ADN

```

- Las matrices morfológicas son más complicadas de leer, pero el paquete "claddis" tiene la función "ReadMorphNexus" que facilita este trabajo. Sin embargo, hay que asegurarse de que el archivo siga un formato estándar y que tenga el bloque de supuestos "Assumption block" al final del archivo. Seguir el ejemplo "morphomatrix.nex" ejecuntando los siguientes comando y revisando el archivo en sus carpetas de trabajo:

```
cat("#NEXUS\n\nBEGIN DATA;\n\tDIMENSIONS  NTAX=5 NCHAR=5;\n\t
    FORMAT SYMBOLS= \" 0 1 2\" MISSING=? GAP=- ;\nMATRIX\n\n
    Taxon_1  010?0\nTaxon_2  021?0\nTaxon_3  02111\nTaxon_4  011-1
    \nTaxon_5  001-1\n;\nEND;\n\nBEGIN ASSUMPTIONS;\n\t
    OPTIONS  DEFTYPE=unord PolyTcount=MINSTEPS ;\n\t
    TYPESET * UNTITLED  = unord: 1 3-5, ord: 2;\n\t
    WTSET * UNTITLED  = 1: 2, 2: 1 3-5;\nEND;", file = "morphmatrix.nex")
morph.matrix <- ReadMorphNexus("morphmatrix.nex")
morph.matrix

```

- Una vez estemos seguros de que nuestra matriz tiene el formato correcto, podemos leerla:

```
matriz_morfo <- ReadMorphNexus("morfologia.nex")
matriz_morfo
```

- Repita este ejercicio con la matriz de 5 x 5 que generó en Mesquite y en R y subir el script de R al DRIVE del curso si decide hacer este ejercicio.
