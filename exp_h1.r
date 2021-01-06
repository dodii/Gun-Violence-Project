install.packages("ggplot2")
install.packages("dplyr")
library(dplyr)
library(ggplot2)

crime <- read.csv("~/Primavera 2020/IMD/Gun-Violence-Project/crime.csv")
crime_sxxi <- crime %>% filter(year>=2000)

crime16 <- crime_sxxi %>% filter(year==2016) %>% select(year, jurisdiction, state_population, violent_crime_total, murder_manslaughter, prisoner_count)
crime16$tasa_crimen <- (crime16$violent_crime_total/crime16$state_population)*100000
crime16 <- crime16[order(crime16$tasa_crimen, decreasing = FALSE),]

p <- ggplot(as.data.frame(crime16), aes(x=reorder(jurisdiction, -tasa_crimen), y=tasa_crimen))
p <- p + xlab("Estados de EEUU")
p <- p + ylab("Tasa de crimen")
p <- p + geom_bar(stat = "identity", position = "dodge")
p <- p + ggtitle("Tasa de crimen cada 100.000 habitantes en los Estados de EEUU en el 2016.")
p <- p + coord_flip()
p

naep09 <- naep %>% filter(YEAR==2009 & STATE != "DoDEA" & STATE != "District of Columbia")
p2 <- ggplot(as.data.frame(naep09))
p2 <- p2 + aes(x = reorder(STATE, AVG_SCORE), y = AVG_SCORE/2) 
p2 <- p2 + xlab("Estados de EEUU")
p2 <- p2 + ylab("Promedio de las pruebas.")
p2 <- p2 + ggtitle("Promedio de las pruebas de matemática \n y lecura realizadas por el NAEP en el año 2009.")
p2 <- p2 + geom_bar(width = 0.8, stat = "identity") + coord_flip() + theme_bw()
p2