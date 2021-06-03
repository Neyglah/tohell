#!/bin/bash
#
# mr.robot.sh - Nosso robô em Shell - Mr. Robot
#
# Homepage: http://www.utah.com.br
# Autor: Nickolas Pereira dos Santos <djnks87@gmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# --------------------------------------------------
# Este program é um robo interativo, estila Alexa, chamado Mr. Robot criado para invadir determina# das URL's, buscar vulnerabilidades e também verificar conectividades. 
#
# Exemplo de execução:
#
# $ ./mr.robot.sh 
#
# Historico das versões
# Versão 10.0
#
# COPYRIGHT: Este programa é GPL
#
#
#
source /root/doshelltohell/instructions.txt

echo -e "\e[31m\e[1mOlá, eu sou o Mr. Robot! Fui criado para atacar. Não sou seu amigo. Mas diga:\nO que você quer que eu faça?\e[m\e[m"


sleep 2s

while true; do
	echo -e "\n"
	read -p "Diga agora!" ACTION
	echo -e "\n"

	case $ACTION in
		*"ping"*|*"pingar"*|*"conectividade"*)
			DADO="$(( $RANDOM % 10 ))"
			ping -c 4 -4 "${sites[$DADO]}"
		;;
		*"nmap"*|*"mapear"*|*"portas abertas"*)
			DADO="$(( $RANDOM % 10 ))"
			nmap -sS "${sites[$DADO]}"
		;;
		*"connect"*|*"access"*|*"ssh"*)
			DADO="$(( $RANDOM % 4 ))"
			ssh -l root "${openssh[$DADO]}"
		;;
		*"update"*|*"atualize"*|*"atualizar"*)
			apt update
			apt upgrade -y
		;;



	esac
done
