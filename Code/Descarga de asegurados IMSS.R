######################## Descarga de datos de asegurados ########################
#Paquetes
rm(list=ls())
pacman::p_load(downloader, tidyverse, RCurl)
#Directorio general
dir<-setwd("C:\\Users\\vjvelascorios\\Downloads/")
#Se carga la tabla con las ligas para accesar a los datos
links<-read_csv(url("https://raw.githubusercontent.com/vjvelascorios/Asegurados-IMSS/main/Utilities/Tabla_direcciones.csv"))
######################## 2002 ########################
x<- "2002"
links_mensuales<- links %>%
  filter(Year==x)%>%
  select(Year,Month,Final_link)

y_i<- x #esto cambia
m_i<-"01"
d_i<-"01"
dir.create(y_i,showWarnings = T) #Se crea el directorio correspondiente al año
# Vector de mesees correspondientes al año
year<-seq(as.Date( paste0(y_i,"/",m_i,"/",d_i) ), by = "month", length.out = 12)
asg<-"asg-" #nombre inicial del archivo
estension<-".csv" #extensión
#se crea la lista general de archivos a descargar
lista_general<-paste0(asg,year,estension)#el nombre de todos los archivos del año
dir_completa_de_guardado<-paste0(y_i,"/",lista_general)#se crea la dirección completa donde se guardarán los archiuvos

download(as.character(links_mensuales[1,3]),dir_completa_de_guardado[1])
|