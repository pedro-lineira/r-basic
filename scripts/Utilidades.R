#Instalar libreria
install.packages("tidyverse", dependencies = T)

#Cargar libreria 
library(tidyverse)

#Versión de libreria cargadas y versión de R necesaria.
pkgs <- as.data.frame(installed.packages(), stringsAsFactors = FALSE, row.names = FALSE)
pkgs[, c("Package", "Version", "Built")]

#Actualizar versión de R
install.packages("installr")
library(installr)
updateR()

#FIN
