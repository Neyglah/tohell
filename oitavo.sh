#!/bin/bash
#
# oitavo.sh - Nosso oitavo programa em Shell - Laço "for"
#
# Homepage: http://www.utah.com.br
# Autor: Nickolas Pereira dos Santos <djnks87@gmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# --------------------------------------------------
# Este program ira mostrar uma mensagem na tela para cada arquivo .conf encontrado no diretorio /etc# 
#
# Exemplo de execução:
#
# $ ./oitavo.sh 
# O valor da variável é 0, que é menor que 10.
# O valor da variável é 1, que é menor que 10.
# Histórico de versões
#
# Versão: 8.0
#
# COPYRIGHT: Este programa é GPL

ARQUIVOS="/etc/*.conf"

echo
echo "Bem vindo ao Programa de Listagem de Conf's"
echo

for i in $(ls $ARQUIVOS); do
	echo "O arquivo $i foi encontrado no diretório /etc/"
done

exit 0
