#!/bin/bash
#
# sexto.sh - Nosso sexto programa em Shell - Laço de repetição while
#
# Homepage: http://www.utah.com.br
# Autor: Nickolas Pereira dos Santos <djnks87@gmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# --------------------------------------------------
# Este program ira verificar o valor da variável NUMERO, enquanto o valor da variável for menor que # 10, ele irá mostar a mensagem na tela que o valor é menor que 10 e mostrara o valor da variável. Quando o valor atingir 10 o programa será finalizado
#
# Exemplo de execução:
#
# $ ./sexto.sh 
# O valor da variável é 0, que é menor que 10.
# O valor da variável é 1, que é menor que 10.
# Histórico de versões
#
# Versão: 5.0
#
# COPYRIGHT: Este programa é GPL

NUMERO="0"

echo
echo "Bem vindo ao Programa de Numeros"
echo

while [ $NUMERO -lt "10" ]; do
	echo "O valor da variável é: $NUMERO"
	echo "O $NUMERO é menor que 10"
	let NUMERO=$NUMERO+1
done

exit 0
