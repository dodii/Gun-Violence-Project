# Gun-Violence-Project
Repositorio para el proyecto del curso CC5206 Introducción a la Minería de Datos.

Con la exploración y el respectivo análisis de los datos, se busca generar nueva información para abordar
problemas como el racismo, la brutalidad y corrupción policíaca, la magnitud de la violencia presente
en los incidentes armados estadounidenses, entre muchas otras cuestiones que vayan surgiendo a medida
que el proyecto progresa.

# Hito 1
La primera etapa del proyecto consiste en la exploración inicial de los datos elegidos para el proyecto.

Informe del primer hito:
https://www.overleaf.com/1747153243wrtcztdfygzd

# Datasets iniciales y sus detalles

## US police shootings
Fuente: https://www.kaggle.com/ahsen1330/us-police-shootings

Contiene datos de incidentes policiales con tiroteos en EE.UU.
Posee aproximadamente 5000 filas y 15 columnas, con información como:
- Nombre de la persona acribillada y datos personales como su edad, etnia o signos de trastornos mentales..
- Fecha y lugar del incidente.
- Descripción de cómo fue asesinada la persona (disparos, electrocutada, ambos casos, colisión automovilística, etc).
- Armas involucradas el asunto.
- Presencia de cámara corporal (gopro o body cameras) en los oficiales de policía involucrados en el incidente.

## Gun Violence Data
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

## Gun Violence Database
Fuente: https://www.kaggle.com/gunviolencearchive/gun-violence-database

Similar al dataset "Gun Violence Data", pero con múltiples archivos ya separados según el tipo de víctimas (adolescentes o niños)
o el tipo incidentes (con muertos o heridos accidentales, incidentes con policías involucrados, tiroteos masivos, etc).

En general, el dataset posee 15 archivos csv con 500 filas cada uno y comparten las mismas 7 columnas, con información como:
- Fecha y lugar del incidente.
- Involucrados, tanto heridos como muertos.

## The Washington Post Fatal Force | Police Shootings
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

# Colaboradores
- Vicente Ardiles / Ephyy
- Cristóbal Jaramillo / JaramilloCris
- Francisco Molina / Pancho9494
- Rodrigo Oportot / dodii
