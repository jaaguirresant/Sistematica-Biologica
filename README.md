# MÓDULO INFERENCIA FILOGENÉTICA

![](https://scx2.b-cdn.net/gfx/news/hires/2015/treeoflifefo.jpg =200x200)

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

## Contenido

#

**[Clase 1](/clase_1/Taller_1.md). Repaso árboles filogenéticos y caracteres.** En esta clase haremos un breve repaso de conceptos fundamentales sobre la lectura e interpretación de árboles filogenéticos. Esta clase incluye una corta presentación ([bajar presentación aquí](clase_1.pdf)), complementada con pequeños quizes relámpago y un [control de la lectura](/clase_1/Taller_1.md) del siguiente artículo:

[Gould, S. 1983. What, If Anything, Is a Zebra?](/clase_1/Gould_1983.pdf)

**[TALLER CONTROL DE LECTURA ](/clase_1/Taller_1.md)**

**Nota:** Para la próxima clase leer los siguientes artículos y responder el formulario:

1. Argnarsson (2004)

2. Estructura de estudio filogenético

3. [formulario](Formulario).

#

**[Clase 2](/clase_2/Taller_2.md). Estructura de un estudio de inferencia filogenética.** En esta clase exploraremos el esqueleto de un estudio de inferencia filogenética con base en la lectura del artículo de [???](??). Además exploraremos el tipo de preguntas que pueden formularse en este tema, así como los datos que se usan para responderlas. Para este último punto, discutiremos al final de la clase un asunto relevante hoy en día: la filogenia del COVID-19. Para esto, exploraremos la herramienta generada por [Nexstrain](https://nextstrain.org/). 

La tarea para la próxima clase es ver el video de Trevor Bedford: ["Real-time Tracking of Virus Evolution"](https://youtu.be/Ok2iZ9-cUlk) y responder el siguiente formulario: [Análisis de la filogenia y los virus](/clase_2/Taller_2.md).


#

**[Clase 3](/clase_2/Taller_2.md). Construcción manual de matrices de caracteres para inferencia filogenética.** En esta clase práctica sentaremos las bases para que ustedes formulen sus propios proyectos y generen sus propias matrices de datos. (Descargar PDF de la ntroducción [aquí](enlace)). Para esto, haremos un ejercicio práctico donde cada grupo de estudio generará una matriz de caracteres de un grupo taxonómico de interés. Las instrucciones del taller están en este enlace [instrucciones](enlace). La organización de los grupos de trabajo y respectivas salas de reunión virtuales están en este [enlace]. 

**_NOTA:_** Para las próximas dos clases se requiere leer el siguiente artículo:

- [Wiley & Lieberman 2011 - Capítulo 6](/clase_2/MP_Wiley_Lieberman.pdf) o Lanteri?

#

**[Clase 4](/clase_2/Taller_2.md). Métodos de distancia y argumentación Hennigiana.** Esta clase hace una breve mención a los métodos que dieron origen a los métodos modernos de inferencia filogenética. Descargar diapositivas [aquí](/clase_2/Clase_2.pdf). Para la parte práctica hacer el taller de ejercicios manuales con datos morfológicos para inferir árboles filogenéticos usando UPGMA y argumentación Hennigiana. 

**[IR AL TALLER 2](/clase_2/Taller_2.md)**

<p align="center">
  <img src="https://github.com/jaaguirresant/Sistematica-Filogenetica/blob/master/clase_2/Hennig_book.jpg" width="130" height="200" />
</p>

**NOTA:** Para la próxima clase leer el siguiente artículo: 

- [Wiens 2011](/Clase_3/Wiens_2011.pdf)

#

**[Clase 5](/Clase_3/Taller_MP1.md). Máxima Parsimonia II.** En esta clase se define el concepto de "criterio de optimalidad" para la inferencia filogenética y se presenta el primer método que incorpora este criterio: la Máxima Parsimonia (Descargar diapositivas [aquí](/Clase_3/Clase_3.pdf)). Esta clase se complementa con un taller básico de inferencia manual de hipótesis filogenéticas usando este método. 

**[IR AL TALLER 3](/Clase_3/Taller_MP1.md)**

<p align="center">
  <img src="https://github.com/jaaguirresant/Sistematica-Filogenetica/blob/master/Clase_3/Strict.png" width="250" height="200" />
</p>


#

# Clase 6. Medidas de soporte e introducción a modelos

# Clase 7. ML e Inferencia Bayesiana

# Clase 8. Presentación de proyectos
