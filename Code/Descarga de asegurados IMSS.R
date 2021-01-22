######################## Descarga de datos de asegurados ########################
#Paquetes
rm(list=ls())
pacman::p_load(downloader)
#Directorio general
dir<-setwd("Z:\\Datos\\ASG IMSS")
######################## 2002 ########################
y_i<-"2002"#esto cambia
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

#Descarga de archivos
print(lista_general[1])
download("http://datos.imss.gob.mx/node/549/download", dir_completa_de_guardado[1]) 

