#!/bin/bash

#Inizializzazione della variabile "b", necessaria a determinare se almeno uno dei nomi inserito come argomento appartiene ad un file
b=0

#Se non vengono inseriti argomenti verrà generato un messaggio di errore e lo script restituirà un exit code uguale a 1
if [ $# -eq 0 ]
then
	echo
	echo "Inserire almeno un argomento!"
	exit 2
fi

#Ciclo necessario alla ricerca dei file con il nome uguale a quello inserito come argomento
for i in $@
do
	if [ -f $i ]
	then
		b=1
		break
	fi
done

echo

#Se, al termine del precedente ciclo, la variabile "b" avrà assunto valori maggiori di "0" lo script comunicherà che è stato trovato almeno un file
#e restituirà un exit code uguale a 0.
#In caso contrario comunicherà che non è stato trovato alcun file e restituirà un exit code uguale a 1
if [ $b -eq 1 ]
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
