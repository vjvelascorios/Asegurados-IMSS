######################## Descarga de datos de asegurados ########################
{
#Paquetes y ajustes previos
rm(list=ls())
pacman::p_load(downloader, tidyverse, RCurl, beepr, tictoc)
#Directorio general
dir<-setwd("Z:/Datos/ASG IMSS/")
#Se carga la tabla con las ligas para accesar a los datos
links<-read_csv(url("https://raw.githubusercontent.com/vjvelascorios/Asegurados-IMSS/main/Utilities/Tabla_direcciones.csv"))
tail(links)
}
#################################################################################
#################################################################################

######################## 1997 ########################
{
  # Ajustes
  x<- "1997" #cambia anualmente
  links_mensuales<- links %>%
    filter(Year==x)%>%
    select(Year,Month,Final_link)
  
  y_i<- x #esto cambia
  m_i<-"08"
  d_i<-"01"
  dir.create(y_i,showWarnings = T) #Se crea el directorio correspondiente al año
  # Vector de mesees correspondientes al año
  year<-seq(as.Date( paste0(y_i,"/",m_i,"/",d_i) ), by = "month", length.out = 5)
  asg<-"asg-" #nombre inicial del archivo
  estension<-".csv" #extensión
  #se crea la lista general de archivos a descargar
  lista_general<-paste0(asg,year,estension)#el nombre de todos los archivos del año
  dir_completa_de_guardado<-paste0(y_i,"/",lista_general)#se crea la dirección completa donde se guardarán los archiuvos
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # agosto
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
   }
}


######################## 1998 ########################
{
  # Ajustes
  x<- "1998" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}


######################## 1999 ########################
{
  # Ajustes
  x<- "1999" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}


######################## 2000 ########################
{
  # Ajustes
  x<- "2000" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}


######################## 2001 ########################
{
  # Ajustes
  x<- "2001" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}


######################## 2002 ########################
{
# Ajustes
x<- "2002" #cambia anualmente
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
dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)

#Descarga anual de los datos
{
tic()
# enero
download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
# febrero
download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
# marzo
download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
# abril
download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
# mayo
download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
# junio
download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
# julio
download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
# agosto
download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
# septiembre
download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
# octubre
download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
# noviembre
download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
# diciembre
download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
toc()
beep(sound = 3)
}
}

######################## 2003 ########################
{
  # Ajustes
  x<- "2003" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}

######################## 2004 ########################
{
  # Ajustes
  x<- "2004" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}

######################## 2005 ########################
{
  # Ajustes
  x<- "2005" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}

######################## 2006 ########################
{
  # Ajustes
  x<- "2006" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}

######################## 2007 ########################
{
  # Ajustes
  x<- "2007" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}


######################## 2008 ########################
{
  # Ajustes
  x<- "2008" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}


######################## 2009 ########################
{
  # Ajustes
  x<- "2009" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}


######################## 2010 ########################
{
  # Ajustes
  x<- "2010" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}


######################## 2011 ########################
{
  # Ajustes
  x<- "2011" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}


######################## 2012 ########################
{
  # Ajustes
  x<- "2012" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}


######################## 2013 ########################
{
  # Ajustes
  x<- "2013" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}

######################## 2014 ########################
{
  # Ajustes
  x<- "2014" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}

######################## 2015 ########################
{
  # Ajustes
  x<- "2015" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}

######################## 2016 ########################
{
  # Ajustes
  x<- "2016" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}

######################## 2017 ########################
{
  # Ajustes
  x<- "2017" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}

######################## 2018 ########################
{
  # Ajustes
  x<- "2018" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}

######################## 2019 ########################
{
  # Ajustes
  x<- "2019" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}


######################## 2020 ########################
{
  # Ajustes
  x<- "2020" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # mayo
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # junio
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # julio
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # agosto
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # septiembre
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # octubre
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # noviembre
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # diciembre
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}

######################## 2021 ########################
{
  # Ajustes
  x<- "2021" #cambia anualmente
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
  dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
  
  #Descarga anual de los datos
  {
    tic()
    # enero
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    # febrero
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    # # marzo
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    # abril
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    # # mayo
    # download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    # # junio
    # download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    # # julio
    # download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    # # agosto
    # download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    # # septiembre
    # download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    # # octubre
    # download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    # # noviembre
    # download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    # # diciembre
    # download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
  }
}
