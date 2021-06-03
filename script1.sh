#!/bin/bash
#
# script01.sh - Emulação do Comando seq em Bash
#
# O comando seq recebe dois numeros e mostra na saida padrao todos os numeros
# existenter entre eles numa sequencia pronta para ser usada pelo comando for. Caso omitido o numero# inicial, é utilizado 1.


o=+ 
a=1 
z=${1:-1}

[ "$2" ] && { 
	a=$1
       	z=$2
}

[ $a -gt $z ] && o=-

while [ $z -ne $a ]; do 
	echo $a 
       	eval "a=\$((a$o 1))"
done

echo $a
