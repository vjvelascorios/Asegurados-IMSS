#============================================================================
#=============== Loop version #==============================================
#============================================================================
# GENERAL NOTE
# This code has some requiriments, in orden of importance:
#   - A decent internet conecction, due data downloades is heavy (around 300 mb)
#   - A lot of space (entire data space needed for a year is around 3 gb for lastly years)
#   - Decent computer (at least 8 gb in ram due)
# Last note: entire code is experimental, due i can't make a complete test

#============================================================================
rm(list=ls())
if (!require("pacman")) install.packages("pacman")
pacman::p_load(downloader, tidyverse, RCurl, beepr, tictoc)
#Directory
# Reading dataset from github with data links
links <- read_csv(url("https://raw.githubusercontent.com/vjvelascorios/Asegurados-IMSS/main/Utilities/Tabla_direcciones.csv"))

tail(links) #tail func to inspect dataset is complete and in a good format

dir <- ("C:/Users/vjvelascorios/Desktop/Test/")# YOU NEED TO CHANGE THIS ACCORDING YOUR DIRECTORY

# Downloading a specific year (2005):
links_mod <-  links %>% filter(Year == 2005) # ALSO, YOU NEED TO CHANGE THIS ACCORDIND YOU DESIRED YEAR
year_2_dl <- "2005" # CHANGE THIS TOO IF YOU NEED TO DOWNLOAD DATA FROM ANOTHER YEAR

# loop
for (i in 1:12) {
	  download.file(url = links_mod$Final_link[i], destfile = paste0(dir,links_mod$Month[i],year_2_dl,".csv"))
}
# that's all
#============================================================================









#============================================================================
# Downloading the entire dataset (1997-2021):
#============================================================================
rm(list=ls())
pacman::p_load(downloader, tidyverse, RCurl, beepr, tictoc)
#Directorio general
#Se carga la tabla con las ligas para accesar a los datos
links<-read_csv(url("https://raw.githubusercontent.com/vjvelascorios/Asegurados-IMSS/main/Utilities/Tabla_direcciones.csv"))

dir <- ("C:/Users/vjvelascorios/Desktop/Test/") #change according your directory


# creates a new variable to assign correct names for storing datasets
links <- links %>% mutate(nametoassign=paste0(Month,"_",Year))
# output:
# [1] "august_1997"

# Final loop
for (i in 1:nrow(links)) {
  download.file(url = links$Final_link[i], destfile = paste0(dir,links$nametoassign[i],".csv"))
}
#============================================================================
#============================================================================
