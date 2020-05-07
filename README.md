# MÓDULO INFERENCIA FILOGENÉTICA

<p align="center">
  <img src="https://scx2.b-cdn.net/gfx/news/hires/2015/treeoflifefo.jpg" width="330" height="300" />
</p>

Figura tomada de: _https://scx2.b-cdn.net/gfx/news/hires/2015/treeoflifefo.jpg_

## Objetivos

1. Aprender las bases metodológicas de los principales métodos de inferencia filogenética a partir de matrices de caracteres homólogos y evaluar críticamente los supuestos, virtudes y desventajas de estos métodos.

2. Conocer los principios estadísticos para medición de la confianza de las hipótesis filogenéticas.  

3. Adquirir destrezas computacionales básicas para llevar a cabo análisis de inferencia filogenética a partir de matrices de caracteres.

## Competencias

1. Habilidad de inferir e interpretar críticamente hipótesis de relaciones filogenéticas en cualquier grupo de organismos generadas bajo distintas metodologías a partir de matrices de caracteres.

2. Capacidad para interpretar fundamentos de la biología evolutiva en un árbol filogenético generado a partir de matrices de caracteres empíricas.

3. Entendimiento de la importancia de la inferencia filogenética para abordar problemas biológicos en un contexto evolutivo.

## Estructura general del módulo

### Preparación

Este módulo ha sido diseñado para estudiantes del curso de pregrado "Sistemática Biológica" del programa de Biología de la Universidad Nacional de Colombia. Los estudiantes inscritos en este curso ya debieron haber tomado clases previas sobre temas introductorios de evolución y sistemática filogenética para poder seguir con los contenidos de este módulo. Este módulo fue diseñado para ser tomado de manera remota dada la emergencia generada por el virus COVID-19. 

#### Requerimientos y materiales básicos

Aunque este módulo está diseñado para llevarse a cabo mínimamente con acceso a un computador, celular o tablet durante las horas de clase y para acceder a los ejercicios, se recomienda a los estudiantes que puedan y tengan acceso a computadores propios bajar los siguientes programas:

- Editor de texto (recomendados notepad++ para Windows y Atom para Mac).
- [Mesquite](https://www.mesquiteproject.org/). Útil para construir y/o visualizar matrices de caracteres.
- R y R Studio (bajar los paquetes: Ape, Claddis, Phangorn, Phytools).
- [TNT](http://www.lillo.org.ar/phylogeny/tnt/). GUI solo para Windows. Para análisis de Máxima Parsimonia.
- [jmodelTest](https://github.com/ddarriba/jmodeltest2). Para selección de modelos evolutivos de secuencias de nucleótidos.
- [RAxML-GUI](https://antonellilab.github.io/raxmlGUI/). Para análisis de Máxima Verosimilitud.
- [MrBayes](http://nbisweden.github.io/MrBayes/download.html). Para análisis de Inferencia Bayesiana.
- [FigTree](https://github.com/rambaut/figtree/releases). Para visualización y edición de árboles filogenéticos.
- [Tracer](https://github.com/beast-dev/tracer/releases/tag/v1.7.1). Para visualizar resultados de MCMC.

**Nota:** Todos los programas de inferencia filogenética vienen acompañados con sus respectivos tutoriales. Se sugiere seguirlos en su tiempo libre si quieren adquirir destrezas más avanzadas; no se limiten únicamente a los ejercicios de la clase.  

### Dinámica de las clases

Para facilitar el trabajo autónomo de los estudiantes desde sus casas y minimizar la presencialidad en las sesiones virtuales, este módulo está principalmente enfocado en talleres y lecturas en casa. Las sesiones virtuales estarán limitadas a clases cortas sobre conceptos fundamentales de los métodos, explicación de las tareas, resolución de dudas y presentación de resultados. Todas las presentaciones con diapositivas, artículos y talleres serán subidos a esta plataforma en su debido momento. 

**Nota.** Durante algunas clases haremos sesiones interactivas con PearDeck. Para que ustedes puedan interactuar es necesario que estén conectados a sus cuentas de correo electrónico de la UN durante la clase.

## Contenido

#

**Clase 1. Repaso árboles filogenéticos y caracteres.** Antes de comenzar con esta clase, se recomienda leer el artículo de Gould, S. 1983. What, If Anything, Is a Zebra? ([Enlace al artículo](/clase_1/Gould_1983.pdf)) y responder las preguntas del siguiente taller: ([Enlace al taller](/clase_1/Taller_1.md)). Subir las respuestas del taller al Drive del curso: https://drive.google.com/drive/folders/1GisuB1XngrFi8EogqVGG2JcIOz--MLLN?usp=sharing

<p align="left">
  <img src="https://royalsocietypublishing.org/cms/asset/6b6bf137-4e2a-4071-b98c-01c9eb1043d2/rsos160997f03.jpg" width="300" height="250" />
</p>

_Figura tomada de: Cuchi et al. (2017). Detecting taxonomic and phylogenetic signals in equid cheek teeth: towards new palaeontological and archaeological proxies. R. Soc. open sci.4160997
http://doi.org/10.1098/rsos.160997_

Durante la clase haremos un breve repaso de conceptos fundamentales sobre la lectura e interpretación de árboles filogenéticos. Esta clase incluye una corta presentación ([bajar presentación aquí](/clase_1/clase_1.pdf)), complementada con pequeños quizes anónimos relámpago. Para interactuar virtualmente en esta presentación, los estudiantes deben entrar al enlace que enviará el profesor al comienzo de la clase. Para que el enlace funcione, los estudiantes deben tener sus cuentas de correo abiertas. 

**Tarea:** Para la próxima clase leer el siguiente capitulo del libro de [Baum & Smith (2013)](/clase_1/trait.pdf) y responder la siguiente encuesta: https://forms.gle/qwEon5KR67FfJmjY9

**Nota:** En preparación para la próxima clase, leer el siguiente artículo:

[Agnarsson (2004)](/clase_1/Agnarsson_2004.pdf)

#

**[Clase 2](/clase_2/clase_2.pdf). Estructura de un estudio de inferencia filogenética.** Esta clase estará dividida en dos partes:

1. Exploración del esqueleto de un estudio de inferencia filogenética con base en la lectura del artículo de [Argnarsson (2004)](/clase_1/Agnarsson_2004.pdf). Para esta actividad haremos la discusión con base en las preguntas del siguiente taller: [Taller 2](/clase_2/Taller_2.md) y una corta charla (bajar la presentación [aquí](/clase_2/clase_2.pdf)). 

<p align="center">
  <img src="https://desinsectador.files.wordpress.com/2013/06/steatoda-nobilis-01.jpg" width="200" height="200" />
</p>

[Fuente de la_imagen](https://desinsectador.files.wordpress.com/2013/06/steatoda-nobilis-01.jpg)

   - **Tarea.** Subir las respuestas del taller a la carpeta "Taller_2" del Drive del curso: https://drive.google.com/drive/folders/1GisuB1XngrFi8EogqVGG2JcIOz--MLLN?usp=sharing

2. Para ilustrar la relevancia de los estudios de inferencia filogenética, exploraremos la herramienta [Nexstrain](https://nextstrain.org/); una interfase gráfica que usa inferencia filogenética para entender la propagación del virus SARS-CoV-2 (COVID19) y otras pandemias recientes.

<p align="center">
  <img src="https://nextstrain.org/static/29ad6a31f0f2469727286691b577cfa1/7c190/mumps.png" width="600" height="400" />
</p>

[Fuente de la_imagen](https://nextstrain.org/static/29ad6a31f0f2469727286691b577cfa1/7c190/mumps.png)

El [taller](/clase_2/Taller_3.md) de este segmento de la clase se hará en grupos y consta de dos partes:

   - Ver el video de Trevor Bedford, el creador de la herramienta Nextstrain: ["Real-time Tracking of Virus Evolution"](https://youtu.be/Ok2iZ9-cUlk). El video está en inglés, pero en YouTube es posible generar subtítulos automáticamente traducidos al español en la opción de configuración del video (ver tutorial acá: [](https://support.google.com/youtube/answer/100078?co=GENIE.Platform%3DDesktop&hl=es-419). No es la mejor traducción, pero ayuda mucho. Con base en el video, responder las primeras tres preguntas del taller: [Análisis filogenético del COVID19](/clase_2/Taller_3.md).
   - Abrir y explorar la herramienta Nextstrain y hacer el resto del taller: [Análisis filogenético del COVID19](/clase_2/Taller_3.md).
 
**Tarea:** Subir las respuestas del taller a la carpeta "Taller_3" en el Drive del curso: https://drive.google.com/drive/folders/1GisuB1XngrFi8EogqVGG2JcIOz--MLLN?usp=sharing

#

**Taller de iniciación en R**

El siguiente enlace contiene el script de un pequeño repaso de los fundamentos de R para entender los ejercicios computacionales que veremos en este módulo: [Ir al script](/Intro_R.R). Una buena guía para aprender R es el libro "A Beginner’s Guide to R", el cual está libre para descarga durante la pandemia en el siguiente enlace: https://link.springer.com/book/10.1007/978-0-387-93837-0.

#

**[Clase 3](/clase_3/clase_3.pdf). Matrices de caracteres para inferencia filogenética.** En esta clase práctica sentaremos las bases para que ustedes formulen sus propios proyectos y generen sus propias matrices de datos para inferir hipótesis filogenéticas. La clase estará dividida en tres partes:

1. Explicación del proyecto del módulo (ver las instruciones del proyecto [aquí](/clase_3/proyecto.md))

2. Charla sobre homología primaria y codificación de matrices (Descargar la presentación [aquí](/clase_3/clase_3.pdf)). Ejercicio de homología primaria con morfología (ver taller [aquí](/clase_3/Taller_4.md)). 

3. Taller homología primaria con secuencias de ADN. En este ejercicio se aprenderán las bases para descargar datos de [GenBank](https://www.ncbi.nlm.nih.gov/nucleotide/); entender un archivo de extensión "fasta"; generar un alineamiento de secuencias con mafft; y entender el formato nexus para inferencia filogenética. La instrucciones detalladas del taller se encuentran [aquí](/clase_3/Taller_4.md).

**_NOTA:_** Para las próximas dos clases se requiere leer alguno de los siguientes artículos:

- Máxima Parsimonia: [Lanteri (2006)](/clase_3/Parsimonia.pdf) **o** [Baum & Smith (2013)](/clase_3/MP_baum_smith2013.pdf)

#

**[Clase 4](/clase_4/Taller_MP.md). Distancias, Inferencia Hennigiana y Máxima Parsimonia (Parte I)** Esta clase hace una breve mención a los métodos que dieron origen a los métodos modernos de inferencia filogenética y abordaremos el concepto del criterio de optimalidad y el método de la Máxima Parsimonia. Descargar diapositivas [aquí](/clase_4/Clase_4.pdf). Para la parte práctica, haremos el siguiente taller con los mismos grupos de trabajo de siempre: 

**[IR AL TALLER 2](/clase_4/Taller_MP.md)**

<p align="center">
  <img src="https://github.com/jaaguirresant/Sistematica-Filogenetica/blob/master/clase_2/Hennig_book.jpg" width="130" height="200" />
</p>

**NOTA 1:** Para la próxima clase leer el siguiente artículo: 

- [Wiens_2011](/clase_4/Wiens_2011.pdf)

**NOTA 2:** Para quien quiera ir prácticando con el script de R que usaremos en la próxima clase, se puede bajar [aquí](/clase_5/parsimonia.R)

**NOTA 3:** Altamente recomendado que para la próxima clase ya tengan la matriz de datos alineados de sus proyectos lista y en los formatos fasta, tnt (o XREAD), Nexus y Phyllip.

#

**[Clase 5](/clase_5/Taller_MP2.md).** En esta clase se explican algunas ramificaciones de la Máxima Parsimonia ([bajar diapositivas aquí](/clase_5/Clase_5.pdf)) y termina con una práctica computacional de inferencia filogenética con Máxima Parsimonia usando el programa TNT y el paquete Phangorn de R. 

<p align="center">
  <img src="https://github.com/jaaguirresant/Sistematica-Filogenetica/blob/master/clase_4/Gastrotheca2.jpg" width="250" height="300" />
</p>

**[IR AL TALLER DE TNT](/clase_5/Taller_TNT.md)**

**[IR AL SCRIPT DE R](/clase_5/parsimonia.R)**

**NOTA:** Para la clase del jueves leer:

[Baum & Smith (2009)](/clase_5/baumsmith2013_ML.pdf)(Texto en inglés) **o** [Abascal et al (2014)](/clase_5/ML_Espanol.pdf) (Texto en español)
