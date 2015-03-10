#!/bin/bash

#Nel caso in cui il numero di argomenti inseriti sia maggiore di 1 o uguale a 0 verrà stampato un messaggio di errore e lo script retituirà l'exit code 1
if [ $# -gt 1 -o $# -eq 0 ]
then
	echo
	echo "Inserire uno ed un solo argomento!"
	exit 1
fi



echo

#Controllo per la verifica della presenza del file con il nome passato come argomento
if [ -f $@ ]
then
	echo "File trovato!"
else
	echo "File_non_trovato"
fi

exit 0



# Riceve un argomento da riga di comando.
# Se la directory corrente contiene il file il cui nome e' passato come argomento, stampa "File trovato!", altrimenti stampa "File _non_ trovato"
