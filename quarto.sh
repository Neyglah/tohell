#!/bin/bash
#
# quarto.sh - Nosso quarto programa em Shell - Condicionais if then else
#
# Homepage: http://www.utah.com.br
# Autor: Nickolas Pereira dos Santos <djnks87@gmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# --------------------------------------------------
# Este program ira capturar o valor digitado pelo usuario e ira armazenar na variavel $DIGITADO e ira comparar com o valor da variavel SEGREDO. Se os valores forem iguais ira mostrar quei foi recvelado o segredo na tela, se não for igual, irá mostrar um erro.
#
# Exemplo de execução:
#
# $ ./quarto.sh 
# Digite o Segredo:
# utah
# Meus Parabéns! Voce acertou o segredo. Voce está na melhor em Linux do Brasil
# $ ./quarto.sh 
# Digite o segredo:
# blue
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
echo "Por favor, digite o segredo:"
# read ira ler o que o usuario digitou e armazenara na variavel DIGITADO
read DIGITADO

if [ "$SEGREDO" == "$DIGITADO" ]; then
	echo "Meus Parabéns!!!! Você acertou o segredo! Você está na melhor em Linux do Brasil"
	echo
else
	echo "ERROU! Está perdendo seu tempo na $DIGITADO"
	echo
fi
