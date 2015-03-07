#!/bin/bash

if [ $# -gt 1 -o $# -eq 0 ]
then
	echo "Inserire uno e un solo argomento!"
	exit 1
fi

for i in $(seq $1)
do
	echo "Ciao$i"
done

exit 0

# Riceve un argomento da riga di comando, composto da un numero intero positivo
# Scrive "Ciao 1", "Ciao 2", ... uno per riga, da 1 al numero passato come argomento
