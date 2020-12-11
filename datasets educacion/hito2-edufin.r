library(dplyr);library(usmap);library(leaflet);library(tidyverse);library(ggmap);
library(leaflet.extras);library(htmltools);library(ggplot2);library(maps);
library(mapproj);library(mapdata)

s <- map_data("state")

# Esta funcion genera una grafica del mapa de EEUU con respecto a cualquier
# metríca que se quiera evaluar en relacion a la inversion y el gasto en eduacion
# primaria y secundaria
ploteador <- function(title, anno, metrica){
  ggplot(data, aes(x=long, y=lat, group=group, fill=metrica)) +
    geom_polygon(color="black") +
    coord_map("polyconic") +
    scale_fill_gradient(low="gold2", high="blueviolet") +
    theme(axis.title.x  = element_blank(), axis.title.y = element_blank()) +
    ggtitle(title) +
    labs(fill="USD", subtitle = sprintf("año %s", anno))
}
states$STATE <- tolower(states$STATE)

# Merge Data
st2016 <- states[states$YEAR == 2016,]
data <- merge(s, st2016, by.x = 'region', by.y = "STATE")

ploteador("Ingresos de fuentes estatales para educación primaria y secundaria", 2016, data$STATE_REVENUE)
ploteador("Ingresos de totales para educación primaria y secundaria", 2016, data$TOTAL_REVENUE)
ploteador("Total de gastos en primaria y secundaria", 2016, data$TOTAL_EXPENDITURE)
ploteador("Total de gastos en enseñanza", 2016, data$INSTRUCTION_EXPENDITURE)

# Merge de los dataframe del NAEP para 8vo grado con respectivo promedio de 
# las pruebas de lenguaje y matematica
new <- merge(NDECoreExcel_Mathematics_8, NDECoreExcel_Reading_8, by=c("Jurisdiction", "Year"))
# se cambian los tipos de datos de las columnas que deben ser numericas
new$`Average scale score.x` <- as.numeric(new$`Average scale score.x`)
new$`Average scale score.y` <- as.numeric(new$`Average scale score.y`)
#se calcula el promedio de ambas pruebas
new$promedio <- rowMeans(new[, c(4,6)], na.rm = TRUE)

# Aqui se hace limpieza y modificaciones en los dataset para poder hacer un 
# "super" merge
new$`All students.x` <- NULL
new$`All students.y` <- NULL
new$Jurisdiction <- tolower(new$Jurisdiction)
states <- states %>% rename(Year=year)
states <- states %>% rename(Jurisdiction=STATE)
# Dataframe de gasto e inversion, junto con los promedios del NAEP de c/estado
df <- merge(states, new, by = c("Jurisdiction", "Year"))
# se decide trabajar solo con datos de hace menos de una decada
df2010s <- df[df$Year>2008,]
df2010s$Year <- as.factor(df2010s$Year)

# Scatterplots
p1 <- ggplot(df2010s, aes(TOTAL_REVENUE, promedio, fill=Year)) +
  geom_point(aes(colour=Year), size =3) + 
  ggtitle("Distribucion de los ingresos totales destinados a educacion 1ria y 2ria segun el promedio de las pruebas") + 
  labs(x="Ingresos totales", y="Promedio")+
  xlim(0,20000000)
p1

p2 <- ggplot(df2010s, aes(STATE_REVENUE, promedio, fill=Year)) +
  geom_point(aes(colour=Year), size =3) + 
  ggtitle("Distribucion de los ingresos totales de fuentes estatales destinados a educacion 1ria y 2ria segun el promedio de las pruebas") +
  labs(x="Ingresos de fuentes estatales", y="Promedio") + 
  xlim(1, 12500000)
p2

p3 <- ggplot(df2010s, aes(TOTAL_EXPENDITURE, promedio, fill=Year)) +
  geom_point(aes(colour=Year), size =3) + 
  ggtitle("Distribucion del gasto total en educacion 1ria y 2ria segun el promedio de las pruebas") +
  labs(x="Gastos totales", y="Promedio") +
  xlim(0, 20000000)
p3