#!/bin/bash

#Nel caso in cui il numero di argomenti inseriti sia maggiore o minore di 1 verrà stampato un messaggio di errore
if [ $# -gt 1 -o $# -eq 0 ]
then
	echo "Inserire uno e un solo argomento!"
	exit 1
fi

#Controllo per la verifica della presenza del file con il nome passato in input
if [ -e $1 ]
then
	echo "File trovato!"
else
	echo "File_non_trovato"
fi

exit 0



# Riceve un argomento da riga di comando.
# Se la directory corrente contiene il file il cui nome e' passato come argomento, stampa "File trovato!", altrimenti stampa "File _non_ trovato"
