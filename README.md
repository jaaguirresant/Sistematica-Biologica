# Sistematica-Biologica

# MÓDULO INFERENCIA FILOGENÉTICA


## Objetivos

1. Aprender las bases metodológicas de los principales métodos de inferencia filogenética a partir de matrices de caracteres homólogos y evaluar críticamente los supuestos, virtudes y desventajas de estos métodos.

2. Conocer los principios estadísticos para medición de la confianza de las hipótesis filogenéticas.  

3. Adquirir destrezas computacionales básicas para llevar a cabo análisis de inferencia filogenética a partir de matrices de caracteres empíricas.

## Competencias

1. Habilidad de inferir e interpretar críticamente hipótesis de relaciones filogenéticas en cualquier grupo de organismos generadas bajo distintas metodologías a partir de matrices de caracteres.

2. Capacidad para interpretar fundamentos de la biología evolutiva en un árbol filogenético generado a partir de matrices de caracteres empíricas.

3. Entendimiento de la importancia de la inferencia filogenética para abordar problemas biológicos en un contexto evolutivo.

## Estructura general del módulo

### Preparación

Este módulo ha sido diseñado para estudiantes del curso de posgrado "Sistemática Filogenética y Nomenclatura Botánica/Zoológica" del programa de Maestría en Ciencias-Biología de la Universidad Nacional de Colombia. Los estudiantes inscritos en este curso ya debieron haber tomado cinco semanas de temas introductorios sobre evolución y sistemática filogenética para poder seguir con los contenidos de este módulo. Este módulo fue diseñado para ser tomado de manera remota dada la emergencia generada por el virus COVID-19. 

#### Los requerimientos y materiales básicos para llevar a cabo este módulo son los siguientes:

A. Computador o laptop con los siguientes programas instalados: 
- Editor de texto (recomendados notepad++ para Windows y Atom para Mac).
- [Mesquite](https://www.mesquiteproject.org/). Útil para construir y/o visualizar matrices de caracteres.
- R y R Studio (bajar los paquetes: Ape, Phangorn, Phytools).
- [TNT](http://www.lillo.org.ar/phylogeny/tnt/). GUI solo para Windows. Para análisis de Máxima Parsimonia.
- [jmodelTest](https://github.com/ddarriba/jmodeltest2). Para selección de modelos evolutivos de secuencias de nucleótidos.
- [RAxML-GUI](https://antonellilab.github.io/raxmlGUI/). Para análisis de Máxima Verosimilitud.
- [MrBayes](http://nbisweden.github.io/MrBayes/download.html). Para análisis de Inferencia Bayesiana.
- [ASTRAL](https://github.com/smirarab/ASTRAL/blob/master/README.md). Para inferencia de árboles de especies a partir de árboles de genes.
- [FigTree](https://github.com/rambaut/figtree/releases).

**Nota:** Es posible que usemos otros programas, pero les avisaré con tiempo. Todos los programas de inferencia filogenética vienen acompañados con sus respectivos tutoriales. Se sugiere seguirlos en su tiempo libre; no se limiten únicamente a los ejercicios de la clase.  

B. Abrir una cuenta en el portal [CIPRES](http://www.phylo.org/).

C. Disponibilidad técnica (conexión a internet) para las sesiones virtuales. Si tiene problemas para conectarse, ponerse en contacto directamente conmigo con suficiente anticipación (jaaguirresa@unal.edu.co).

### Dinámica de las clases

Para facilitar el trabajo autónomo de los estudiantes desde sus casas y minimizar la presencialidad en las sesiones virtuales, este módulo está principalmente enfocado en talleres y lecturas en casa. Las sesiones virtuales estarán limitadas a clases cortas sobre conceptos fundamentales de los métodos, explicación de las tareas, resolución de dudas y presentación de resultados. Todas las presentaciones con diapositivas, artículos y talleres serán subidos a esta plataforma en su debido momento. Se recomienda enfáticamente replicar los ejercicios practicados en clase con los datos de sus proyecto de semestre.

## Contenido

### Semana 1: 13–16 abril.

**Clase 1. Repaso y corto taller de manejo de matrices y datos en R.** se hará un breve repaso de los recursos informáticos para construcción de matrices con editor de texto, el programa Mesquite y R. Para esta parte se deben descargar las siguientes matrices para este ejercicio: [primates.tnt], [primates.nex](enlace), [primates.phy](enlace). 

**Clase 2. Métodos de distancia y argumentación Hennigiana.** Esta clase hace una breve mención a los métodos que dieron origen a los métodos modernos de inferencia filogenética. [Descargar diapositivas aquí](enlace). Para la parte práctica bajar el taller de ejercicios manuales con datos morfológicos para inferir árboles filogenéticos usando UPGMA y argumentación Hennigiana [aquí](https://github.com/jaaguirresant/Sistematica-Filogenetica/blob/master/Diversificacion.pdf).

_Bibliografía complementaria:_

- Distancias
- Argumentación Hennigiana

**Clase 3. Criterio de optimalidad y Máxima Parsimonia.** En esta clase se define el concepto de "criterio de optimalidad" para la inferencia filogenética y se presenta el primer método que incorpora este criterio: la Máxima Parsimonia ([Descargar diapositivas aquí](enlace)). Esta clase se complementa con un taller básico de inferencia manual de hipótesis filogenéticas usando este método ([Descargar taller aquí](enlace)). 

**NOTA:** Antes de empezar la clase se recomienda leer el siguiente artículo: [MP](enlace).

### Semana 2: 20–23 abril. 

**Clase 4. Ramificaciones de la Máxima Parsimonia y medidas de confianza.** En esta clase se explican algunas ramificaciones de la Máxima Parsimonia y se explican los métodos principales para medir la confianza en las hipótesis filogenéticas ([Descargar diapositivas aquí](enlace)). Esta clase termina con un taller manual de ejercicios y una práctica computacional de inferencia filogenética con Máxima Parsimonia usando el programa TNT y el paquete Phangorn de R. ([Descargar taller aquí](enlace)). 

**NOTA:** Antes de empezar la clase se recomienda leer el siguiente artículo: [soporte](enlace).

_Bibliografía complementaria:_

- Tipos de parsimonia
- Indices
- Pesos
- Ratchet
- Ventajas y desventajas

**Clase 5. Discusión de artículo, taller de manipulación de resultados y presentación de matrices del proyecto.**  Esta clase se destina a discutir el artículo de [González ML](enlace), un taller sobre la visualización y manipulación de archivos de árboles filogenéticos ([Descargar taller aquí](enlace)) y a presentar las matrices de los proyectos individuales (PowerPoint de máximo 10 minutos por persona). Para el taller es necesario traer los resultados del ejercicio de la clase anterior.

**Clase 6. Inferencia filogenética usando modelos evolutivos: 1. Máxima Verosimilitud.** Las últimas dos clases de esta semana se destinan a entender los conceptos básicos del uso de modelos evolutivos explícitos para la inferencia filogenética como criterio de opimalidad ([Descargar diapositivas aquí](enlace)). Estas clases se complementan con un corto taller manual de inferencia usand la Máxima Verosimilitud ([Descargar taller aquí](enlace)) y una práctica computacional con los programas JModelTest, RAxML-GUI y el paquete phangorn de R, usando las siguientes matrices: [primates.tnt](enlace), [primates.nex](enlace), [primates.phy](enlace) y la siguiente guía: [guía](enlace).

**NOTA:** Antes de empezar la clase se recomienda leer el siguiente artículo: [ML](enlace).

_Bibliografía complementaria:_

- Modelos
- Long branch attraction
- ML vs, MP

### Semana 3: 27–30 abril.

**Clase 7. Inferencia filogenética usando modelos evolutivos: 1. Máxima Verosimilitud.**

**Clase 8. Inferencia filogenética usando modelos evolutivos: 2. Inferencia Bayesiana:**

**Clase 9. Taller: MrBayes y BEAST**

_Bibliografía complementaria:_

- Model testing
- Priors y parámetros

### Semana 4: 4–7 mayo.

**Clase 10. Árboles de especies vs. árboles de genes** Discusión de artículo y taller.

**Clase 11. Discusión de artículos: visión completa de la inferencia** Cada estudiante presenta un artículo.

_Bibliografía complementaria:_

- ASTRAL
- SDV-QUartets
- Bucky

**Clase 12. Presentación de proyectos finales**


