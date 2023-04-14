#==========================================================
# Serializaci�n de datos dentro de una carpeta
#==========================================================
# options(timeout = 300)
rm(list = ls())
gc()
pacman::p_load(tidyverse,qs,data.table)
# dir <- "/home/vjvelascorios/files/DENUE/denue_30_csv/conjunto_de_datos/"
# setwd(dir)

# Se generan los nombres de los archivos serializados, generando la secuencia de meses del 2020 y uniendolo con la extensi�n qs
serialized_files_names <- paste0(seq(as.Date("2022/1/1"), by = "month", length.out = 12),".qs")
# Se indica el directorio donde se guardar�n los archivos serializados
saving_diretory <- "/home/vjvelascorios/files/IMSS/qs_files/"
# Se obtiene la ruta completa de los archivos objetivos a serializar (todos los archivos del 2020)
target_files <- list.files(path = "/home/vjvelascorios/files/IMSS/2023/", full.names = T)


# Se establece el loop el cual lee cada archivo en `target_files` y lo guarda con su respectivo nombre
for (i in 1:length(target_files)) {
  data <- fread(target_files[i], encoding = "Latin-1")
  qsave(data,file = paste0(saving_diretory,serialized_files_names[i]))
}

  # # Comprobaci�n de datos
# enero_csv <- read_csv( "/home/vjvelascorios/files/IMSS/2022/asg-2022-01-31.csv",locale = locale(encoding = "ISO-8859-1"))
# enero_qs <- qread("/home/vjvelascorios/files/IMSS/qs_files/2020-01-01.qs")
# glimpse(enero_csv)
# glimpse(enero_qs)