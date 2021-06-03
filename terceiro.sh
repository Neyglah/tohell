#!/bin/bash
#
# terceiro.sh - Nosso segundo programa em Shell - Condicionais if then else
#
# Homepage: http://www.utah.com.br
# Autor: Nickolas Pereira dos Santos <djnks87@gmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# --------------------------------------------------
# Este program ira capturar o primeiro parametro digitado, irá armazenar na variavel $1 e ira comparar com o valor da variavel SEGREDO. Se os valores forem iguais ira mostrar quei foi recvelado o segredo na tela, se não for igual, irá mostrar um erro.
#
# Exemplo de execução:
#
# $ ./terceiro.sh utah
# Meus Parabéns! Voce acertou o segredo. Voce está na melhor em Linux do Brasil
# $ ./terceiro.sh Blue
# ERROU!!! Esta perdendo tempo na Blue
# 
#
# Histórico de versões
#
# Versão: 3.0
#
# COPYRIGHT: Este programa é GPL

SEGREDO="utah"

echo 
echo "Bem vindo ao Detector de Segredos"
echo

if [ "$SEGREDO" == "$1" ]; then
	echo "Meus Parabéns!!!! Você acertou o segredo! Você está na melhor em Linux do Brasil"
	echo
else
	echo "ERROU! Está perdendo seu tempo na $1"
	echo
fi
