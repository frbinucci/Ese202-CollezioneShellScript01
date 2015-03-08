#!/bin/bash

#Nel caso in cui venisse inserito più di un argomento verrà generato un messaggio di errore e lo script restituirà un exit code 1
if [ $# -gt 1 -o $# -eq 0 ]
then
	echo
	echo "Inserire uno e un solo argomento!"
	exit 1
fi

#Nel caso in cui l'argomento sia un numero negativo verrà generato un messagio di errore e lo script restituirà un exit code uguale a 2
if [ $@ -lt 0 ]
then
	echo "Errore! Inserire un numero positivo!"
	exit 2
fi

echo

#Visualizzazione in output di "Ciao n"
for i in $(seq $1)
do
	echo "Ciao $i"
done

exit 0

# Riceve un argomento da riga di comando, composto da un numero intero positivo
# Scrive "Ciao 1", "Ciao 2", ... uno per riga, da 1 al numero passato come argomento
