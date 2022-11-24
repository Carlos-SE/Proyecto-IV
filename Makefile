################################################################################
# Makefile para proyecto: Infinite-playlist
#
# Hecho por Carlos Salas
################################################################################

# Directorio con los archivos fuente.
DIR=./lib/
files=$(shell ls $(DIR)/*)


all : header check


header :
	@echo Running Infinite-playlist makefile.


check: $(DIR)/*
	@echo Ejecutando la verificación de los arcvhios.
	@echo
	@for file in $^; do\
		echo Analizando fichero $$file;\
		node --check $$file;\
		echo;\
	done