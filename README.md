# Gun-Violence-Project
Repositorio para el proyecto del curso CC5206 Introducción a la Minería de Datos.

El enfoque del proyecto, explicado de una manera muy simplificada, consiste en trabajar los datasets
descritos en la sección siguiente del documento. 
Mediante la exploración y el respectivo análisis de los datos, 
se busca relacionar estos tres grandes ejes de datasets para generar nueva información, con el fin de abordar problemas 
como el racismo, la brutalidad y corrupción policíaca, la magnitud de la violencia presente
en los incidentes armados estadounidenses, así como la desigualdad e inequidad existente en la educación entre los distintos estados 
de EE.UU y su correlación y repercusión con los conceptos anteriores, entre muchas otras cuestiones que vayan surgiendo a 
medida que el proyecto progrese.

# Hito 1
La primera etapa del proyecto consiste en la exploración inicial de los datos elegidos para el proyecto, junto con abordar
las primeras preguntas y posibles hipótesis factibles de investigar con la información generada.

Informe del primer hito:
https://www.overleaf.com/1747153243wrtcztdfygzd

# Datasets iniciales y sus detalles

## Datasets de tiroteos e incidentes armados en EE.UU

### US police shootings
Fuente: https://www.kaggle.com/ahsen1330/us-police-shootings

Contiene datos de incidentes policiales con tiroteos en EE.UU.
Posee aproximadamente 5000 filas y 15 columnas, con información como:
- Nombre de la persona acribillada y datos personales como su edad, etnia o signos de trastornos mentales..
- Fecha y lugar del incidente.
- Descripción de cómo fue asesinada la persona (disparos, electrocutada, ambos casos, colisión automovilística, etc).
- Armas involucradas el asunto.
- Presencia de cámara corporal (gopro o body cameras) en los oficiales de policía involucrados en el incidente.

### Gun Violence Data
Fuente: https://www.kaggle.com/jameslko/gun-violence-data

Contiene información de incidentes armados en EE.UU entre enero del 2013 y marzo del 2018. La información encontrada en Kaggle 
fue extraída previamente del sitio gunviolencearchive.com, perteneciente a la fundación sin fines de lucro GVA (acrónimo de Gun 
Violence Archive), formada en 2013 para proveer al mundo de información pública y de libre acceso en relación a eventos e incidentes
armados en Estados Unidos.

El dataset posee aproximadamente 230.000 filas y 29 columnas con la siguiente información:
- Fecha y lugar del incidente.
- Número de heridos o muertos producto del incidente.
- Fuentes (URL) con información del incidente.
- Información del incidente como las armas portadas, los disparos y los tipos de heridas en las víctimas.
- Información personal de los perpetradores y/o participantes, así como las víctimas del incidente.

### Gun Violence Database
Fuente: https://www.kaggle.com/gunviolencearchive/gun-violence-database

Similar al dataset "Gun Violence Data", pero con múltiples archivos ya separados según el tipo de víctimas (adolescentes o niños)
o el tipo incidentes (con muertos o heridos accidentales, incidentes con policías involucrados, tiroteos masivos, etc).

En general, el dataset posee 15 archivos csv con 500 filas cada uno y comparten las mismas 7 columnas, con información como:
- Fecha y lugar del incidente.
- Involucrados, tanto heridos como muertos.

### The Washington Post Fatal Force | Police Shootings
Fuente: https://www.kaggle.com/ekrembayar/the-washington-post-fatal-force-police-shootings

Dataset proveniente de la base de datos del periódico estadounidense The Washington Post, que busca compilar en un solo lugar 
información relacionada a todos los tiroteos con consecuencias fatales perpetrados por oficiales de policía estadounidenses
ocurridos desde el 1 de enero del 2015 hasta la fecha. Fue actualizado por última vez (en Kaggle) en agosto del 2020.

El dataset posee aproximadamente 5500 filas y 14 columnas, y es muy similar al dataset "US Police Shootings".

Contiene la siguiente información:
- Datos personales de la persona asesinada.
- Fecha y lugar del incidente.
- El nivel de amenaza que representaba la víctima para la vida de los demás.
- La manera en que murió la víctima.

## Datasets de crímenes en EE.UU

### Crime and Incarceration in the United States
Fuente: https://www.kaggle.com/christophercorrea/prisoners-and-crime-in-united-states

Dataset con la información del número de prisioneros por estado a lo largo de los años, junto con el número y tipo
de crímenes cometidos en total en tales estados. Contiene 3 archivos en formato CSV. La información fue recopilada de
organizaciones como la Oficina de Estadísticas de Justicia (Bureau of Justice Statistics') de EE.UU.

Las dimensiones del dataset rondan entre 18-20 columnas, dos de los datasets poseen alrededor de 50 filas y el otro posee
aproximadamente 950 filas.

Crime and Incarceration by State:
- Dataset con el número de encarcelados por estado y la cantidad y tipos de crímenes, según año, entre 2001 a 2017.

Prison Custody by State:
- Total de prisioneros en custodia

UCR by State:
- Total de crímenes reportados por el FBI en EE.UU por estado, entre 2001 y 2017.

## Datasets de educación en EE.UU

### U.S. Educational Finances
Fuente: https://www.kaggle.com/noriuk/us-educational-finances

Posee información relacionada a las finanzas invertidas en educación primaria y secundaria en EE.UU por estado, con 
sus respectivos resultados académicos para 4° y 8° grado en exámenes de matemáticas y de lectura durante las últimas 
décadas. La información proviene de la oficina del censo estadounidense (United States Census Bureau) y de la asesoría
nacional del progreso educacional (National Assessment of Educational Progress / NAEP).

Contiene varios archivos en formato CSV, con un amplio abanico de información. En detalle, podemos ver los siguientes 
archivos:

Districts:
- Contiene los ingresos y gastos en varias materias en relación a educación por cada distrito escolar según año.

States:
- Contiene un resumen del total de ingresos y gastos por estado, organizados por año.

Naep:
- Resultados del rendimiento escolar en los exámenes de matemáticas y lectura por el total de alumnos en 4° y 8°
grado por estado, en una selección de años específicos.

# Changelog 1.0 Hito 1

## Datos sobre tiroteos
- El dataset US Police Shootings resultaba ser una versión mejor formateado de Washington Post Fatal Force | Police Shootings, por
lo que éste último fue descartado. Ambos diferían en 60 casos aproximadamente, que consistían en eventos ocurridos entre junio y julio
de este año que el primer dataset, US Police Shootings, no poseía aún. Fueron omitidos ya que, por las dimensiones del proyecto, no eran
imprescindibles. 
- El dataset Gun Violence Database fue descartado ya que no poseía la información suficiente (en columnas) para extraer información interesante
que los demás datasets no tuvieran de antemano.
- El dataset Gun Violence Data está siendo formateado, quitándole columnas con información irrelevante para la exploración, como datos de url's 
de noticieros y fuentes repetidas; esto porque la información ya está respaldada por la GVA. Entre otras columnas eliminadas, se encuentran las
de distrito electoral, que no son necesarias porque ya incluye otras columnas indicando el estado y ciudad donde ocurrieron los incidentes.

## Datos sobre educación y crimen general


# Colaboradores
- Vicente Ardiles / Ephyy
- Cristóbal Jaramillo / JaramilloCris
- Francisco Molina / Pancho9494
- Benjamín del Pino B. / benjamindpb
- Rodrigo Oportot / dodii
