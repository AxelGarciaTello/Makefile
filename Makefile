# Archivo Makefile simple

all: muestreo

muestreo.o: muestreo.c
	gcc -c muestreo.c -Wall

procesamiento.o: procesamiento.c
	gcc -c procesamiento.c -Wall

archivos.o: archivos.c
	gcc -c archivos.c -Wall

muestreo: muestreo.o archivos.o procesamiento.o
	gcc muestreo.o archivos.o procesamiento.o -o muestreo -lm

.PHONY: clean

install: all
	if [ ! -d /usr/local/bin ]; then \
		sudo mkdir /usr/local/bin; \
	fi; \
	sudo cp muestreo /usr/local/bin

unistall:
	sudo rm /usr/local/bin/muestreo

clean:
	rm -f *.o muestreo *.dat
