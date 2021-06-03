#!/bin/bash
#
# segundo.sh - Nosso segundo programa em Shell - Variáveis de Controle Internas do Shell
#
# Homepage: http://www.utah.com.br
# Autor: Nickolas Pereira dos Santos <djnks87@gmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# --------------------------------------------------
# Este program ira mostar as principais variaveis de controles internas do shell, que poderão ser usadas por outros programas a fim de obtermos alguma informação.
#
# Exemplo de execução:
#
# $ ./segundo.sh Linux
# O valor da Variavel de $1 é Linux
# $ ./segundo.sh Linux Windows
# O valor da variável $1 é Linux
# O valor da variável $2 é Windows
#
#Histórico de versões
#
# Versão: 2.0
#
# COPYRIGHT: Este programa é GPL

echo "Bem Vindo as Variaveis de Controle Internas do Shell"
echo
echo "A variável \$1 armazena o primeiro parametro passado depois do script, que foi: $1"
echo
echo "A variável \$2 armazena o segundo parametro passado depois do script, que foi: $2"
echo
echo "A variável \$3 armazena o terceiro parametro passado depois do script, que foi: $3"
echo
echo "A variável \$0 armazena o comando que foi executado| nome do programa, que foi: $0"
echo
echo "A variável \$# armazena o numero de parametros que foram passados, que foram: $#"
echo
echo "A variável \$\$ ou \$@ armazena o numero PID do processo gerado na execução do programa passados, que foi: $$"
echo
echo "A variável \$? armazena o valor de retorno do ultimo comando|programa executado, que foi: $?"
echo

