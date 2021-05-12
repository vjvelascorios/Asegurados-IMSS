# Asegurados en el Instituto Mexicano del Seguro Social (1997-2020)

Automatización para  la descarga de datos correspondientes a los [asegurados](http://datos.imss.gob.mx/dataset) en el IMSS de 1997 al (2020).

El código se actualizará en función de la publicación de nuevos datos posteriores al 2021, sin embargo, como alternativa se pretende realizar un código intuitivo para que el usuario pueda realizar modificaciones y extensiones por su propia cuenta. Adicionalmente, se adjunta un pequeño ejemplo sobre el funcionamiento y descarga de los datos.

Adicionalmente,  puedes consultar el presente documento en mi [sitio web](https://vjvelascorios.netlify.app/posts/descarga-de-asegurados-imss/) donde debido al resaltado del código es posible una mejor comprensión.
## Cambios y actualizaciones

- 2021/05/12: Actualización abril 2021

- 2021/04/12: Actualización marzo 2021

- 2021/03/12: Actualización febrero 2021

- 2021/02/06: Código final al 2020 y ejemplo mínimo.

- 2021/01/22: Creación del repositorio.

## Funcionamiento del código
El código adjuntado en el repositorio permite correr el script de forma integral, cambiando únicamente el directorio de descarga de los archivos (debe ser grande debido al tamaño de cada archivo), sin embargo, se adjunta el siguiente ejemplo mínimo y se explican las partes centrales para la comprensión o modificación del código en funciones de las necesidades del usuario.

### 1. Establecer el directorio de descarga (debe ser amplio, debido a que se necesitarán más de 2 GB por año).
``` r
# Se cargan los paquetes necesarios y se establece el directorio de descarga de los datos:
pacman::p_load(downloader, tidyverse, RCurl, beepr, tictoc)
dir<-setwd("Z:/Datos/ASG IMSS/")
```
### 2. Se descarga y lee los datos con las direcciones de los distintos archivos a descargar (1997 hasta lo último disponible).
``` r
links<-read_csv(url("https://raw.githubusercontent.com/vjvelascorios/Asegurados-IMSS/main/Utilities/Tabla_direcciones.csv"))
```
### 3. Se realizan los ajustes previos para la descarga de los datos.
Nota: La variable *x* cambia en función del año que se quiera descargar.
``` r
x<- "1997"
links_mensuales<- links %>%
    filter(Year==x)%>%
    select(Year,Month,Final_link)
y_i<- x
m_i<-"01"
d_i<-"01"
dir.create(y_i,showWarnings = T)
year<-seq(as.Date( paste0(y_i,"/",m_i,"/",d_i) ), by = "month", length.out = 12)
asg<-"asg-"
estension<-".csv"
lista_general<-paste0(asg,year,estension)
dir_completa_de_guardado<-paste0(y_i,"/",lista_general)
dir_completa_de_guardado<-as.data.frame(dir_completa_de_guardado)
```
### 4. Descarga de los datos
``` r
    tic()
    download.file(url= as.character(links_mensuales[1,3]) ,destfile=dir_completa_de_guardado[1,1]  , method = "libcurl")
    download.file(url= as.character(links_mensuales[2,3]) ,destfile=dir_completa_de_guardado[2,1]  , method = "libcurl")
    download.file(url= as.character(links_mensuales[3,3]) ,destfile=dir_completa_de_guardado[3,1]  , method = "libcurl")
    download.file(url= as.character(links_mensuales[4,3]) ,destfile=dir_completa_de_guardado[4,1]  , method = "libcurl")
    download.file(url= as.character(links_mensuales[5,3]) ,destfile=dir_completa_de_guardado[5,1]  , method = "libcurl")
    download.file(url= as.character(links_mensuales[6,3]) ,destfile=dir_completa_de_guardado[6,1]  , method = "libcurl")
    download.file(url= as.character(links_mensuales[7,3]) ,destfile=dir_completa_de_guardado[7,1]  , method = "libcurl")
    download.file(url= as.character(links_mensuales[8,3]) ,destfile=dir_completa_de_guardado[8,1]  , method = "libcurl")
    download.file(url= as.character(links_mensuales[9,3]) ,destfile=dir_completa_de_guardado[9,1]  , method = "libcurl")
    download.file(url= as.character(links_mensuales[10,3]) ,destfile=dir_completa_de_guardado[10,1]  , method = "libcurl")
    download.file(url= as.character(links_mensuales[11,3]) ,destfile=dir_completa_de_guardado[11,1]  , method = "libcurl")
    download.file(url= as.character(links_mensuales[12,3]) ,destfile=dir_completa_de_guardado[12,1]  , method = "libcurl")
    toc()
    beep(sound = 3)
```




## Notas

1. La única estructura de código que cambia en relación al ejemplo mínimo es el correspondiente al 1997, debido a que solo existen datos publicados para los últimos cinco meses del año.

2. Los datos descargados tienen un corte al último día del mes (asegurados totales al final de mes), sin embargo, **por practicidad del código** la notación de los archivos **cambia al primer dia del mes**: "asg-2012-12-31" cambia a "asg-2012-12-01", manteniendo, por supuesto, el mismo periodo de corte (final del mes).

Cualquier duda o nota puedes colocarla en los issues del repositorio o en mis redes sociales: [twitter](https://www.twitter.com/vjvelascorios) o [mail](mailto:vj.velascorios@protonmail.com).