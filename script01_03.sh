#!/bin/bash

#Inizializzazione della variabile "b", necessaria a determinare il numero dei file
b=0

#Se li argomenti inseriti sono minori di 1 verrà generato un messaggio di errore
if [ $# -eq 0 ]
then
	echo "Errore! Inserire almeno un argomento!"
	exit 1
fi

#Ciclo necessario alla ricerca dei file con il nome uguale a quello inserito come argomento
for i in $@
do
	if [ -e $i ]
	then
		b=$(($b+1))
	fi
done

echo

#Se, al termine del precedente ciclo, la variabile "b" avrà assunto valori maggiori di "0" lo script comunicherà che è stato trovato almeno un file
#e restituirà un exit code uguale a 0.
#In caso contrario comunicherà che non è stato trovato alcun file e restituirà un exit code uguale a 1
if [ $b -gt 0 ]
then
	echo "Almeno un file trovato"
	exit 0
else
	echo "Nessun file trovato"
	exit 1
fi


# Riceve uno o piu' argomenti da riga di comando.
# Ogni argomento contiene il nome di un file.
# Lo verifica se almeno uno dei file specificati come argomento esiste nella directory corrente.
# In caso positivo, stampa il messaggio "Almeno un file trovato" e restituisce un codice di uscita 0
# Altrimenti stampa il messaggio "Nessun file trovato" e restituisce il codice di uscita 1
