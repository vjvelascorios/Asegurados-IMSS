###################### Verificación anual de los datos descargados ######################
{
rm(list=ls())
pacman::p_load(tidyverse, data.table, scales, lubridate, tibbletime)

# Directorio raíz
directorio <- ("C:\\Users\\vjvel\\Downloads\\ASG IMSS")
setwd(directorio)
years <- list.dirs(path = directorio)

########## 2021 ##########
# Establecer el año a verificar
x <- '2021'
archivos <- list.files(path = paste0(directorio, "/",x) , full.names = T)

# Lectura de archivos
enero <- fread(archivos[1])
enero <- enero %>% 
  summarize("enero"=sum(ta))
febrero <- fread(archivos[2])
febrero <- febrero %>% 
  summarize("febrero"=sum(ta))
marzo <- fread(archivos[3])
marzo <- marzo %>% 
  summarize("marzo"=sum(ta))
abril <- fread(archivos[4])
abril <- abril %>% 
  summarize("abril"=sum(ta))
mayo <- fread(archivos[5])
mayo <- mayo %>% 
  summarize("mayo"=sum(ta))
junio <- fread(archivos[6])
junio <- junio %>% 
  summarize("junio"=sum(ta))
julio <- fread(archivos[7])
julio <- julio %>% 
  summarize("julio"=sum(ta))
agosto <- fread(archivos[8])
agosto <- agosto %>% 
  summarize("agosto"=sum(ta))
septiembre <- fread(archivos[9])
septiembre <- septiembre %>% 
  summarize("septiembre"=sum(ta))
octubre <- fread(archivos[10])
octubre <- octubre %>% 
  summarize("octubre"=sum(ta))
noviembre <- fread(archivos[11])
noviembre <- noviembre %>% 
  summarize("noviembre"=sum(ta))
diciembre <- fread(archivos[12])
diciembre <- diciembre %>% 
  summarize("diciembre"=sum(ta))
gc()
}
{
validation_set <- as.data.frame(t((cbind(enero, febrero, marzo, abril, mayo, junio, julio, agosto, septiembre, octubre, noviembre, diciembre))
))

Time <- row.names(validation_set)
valores <- as.numeric(validation_set$V1)
validation_set <- as_tibble(as.data.frame(cbind(Time,valores)))
validation_set


# Extracción de datos fuente
datos_oficiales <- read_csv("https://raw.githubusercontent.com/vjvelascorios/Asegurados-IMSS/main/Utilities/asegurados_oficial.csv")
datos_oficiales$Time <- lubridate::ym(datos_oficiales$Time)

datos_comparacion <- as_tbl_time(datos_oficiales, index = Time) %>% 
  select(Time,NACIONAL) %>% 
  arrange(Time)

datos_comparacion <- filter_time(datos_comparacion, ~ x)

validation_set$Time <- datos_comparacion$Time

validation_f <- as_tibble(merge(validation_set, datos_comparacion, by="Time")) %>% 
  mutate("Diferencia"= as.numeric(valores) - NACIONAL)

print(validation_f)
validation_f %>% 
  ggplot(aes(Time,Diferencia))+
  geom_point()+
  scale_y_continuous(labels = comma_format())
}
