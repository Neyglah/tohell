#!/bin/bash
#
# quinto.sh - Nosso quinto programa em Shell - Condicional Case
#
# Homepage: http://www.utah.com.br
# Autor: Nickolas Pereira dos Santos <djnks87@gmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# --------------------------------------------------
# Este program ira capturar o primeiro parametro passado depois do programa ira armazenar na variavel $1, caso o valor seja start, executara o trecho do comando start, caso seja stop, executara o ctrecho do comando stop, caso seja status, executara o trecho do comando status e caso nenhum dos valores acima, ira mostrar a mensagem para usar os valores start, stop, status.
#
# Exemplo de execução:
#
# $ ./quinto.sh 
# Bem vindo ao Programa Stronger
# Iniciando o programa.
# ...
# ....
# .....
# .......
# Programa iniciado com sucesso
#
# Histórico de versões
#
# Versão: 5.0
#
# COPYRIGHT: Este programa é GPL


PID="/tmp/stronger.pid"
echo 
echo "Bem vindo ao programa Stronger!"
echo
case $1 in
	start)
		echo
		echo "Iniciando o programa"
		echo ".........."
		sleep 2s
		echo "............."
		sleep 2s
		echo "................."
		sleep 2s
		echo "......................"
		echo "Programa Iniciado com sucesso"
		touch $PID
		;;
	stop)
		echo
		echo "Parando o programa "
		echo ".........."
		sleep 2s
		echo "............."
		sleep 2s
		echo "................."
		sleep 2s
		echo "......................"
		echo "Programa parado com sucesso"
		rm $PID
		;;
	status)
		echo
		echo "Verificando o status do Programa"
		echo
		if [ -f "$PID" ]; then
			echo "O Programa está em execução!"
		else
			echo "O Programa está parado!"
		fi
		;;
	*)
		echo "Por favor, Digite ./quinto start | stop | status"
		;;
esac

exit 0
