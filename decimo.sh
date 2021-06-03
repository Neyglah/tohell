#!/bin/bash
#
# decimo.sh - Nosso decimo programa em Shell - Script de Backip completo
#
# Homepage: http://www.utah.com.br
# Autor: Nickolas Pereira dos Santos <djnks87@gmail.com>
# Mantenedor: Grupo Utah <services@utah.com.br>
#
# --------------------------------------------------
# Este programa sera usado para realizar um backup full de arquivos localizados em um servidor 
# onde teremos que copiar a pasta /srv/samba
#
# Exemplo de execução:
#
# $ ./decimo.sh 
#
# Historico das versões
# Versão 10.0
#
# COPYRIGHT: Este programa é GPL
#
#
#
# BKPDIR - local onde será armazenado os arquivos de backup.
BKPDIR="/srv/backup/"
# FILEDIR - local onde estão os arquivos de origem, que faremos backup.
FILESDIR="/srv/samba/"
LOGFILE="/var/log/backup.log"
ERRORLOG="/var/log/backup_error.log"
DATE=$(date +%d_% m_%Y)
FILENAME="/srv/backuptar_$DATE.tar.gz"
COMPACT="tar -cvzf $FILENAME $BKPDIR"
ADMIN="djnks87@gmail.com"
SENDUSER="root@utah.local"

echo -e "\n"
echo "Iniciando o Script de backup"
echo -e "\n"

verificar () {
if [ $? -eq 0 ]; then
	echo "Comando OK"
else
	echo "ERRO"
	exit 1
fi
}

mail () {
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de backup" -a $LOGFILE -m "Segue"
}

rsync -avu $FILESDIR $BKPDIR > $LOGFILE 2> $ERRORLOG
verificar
mail

[ -f "$COMPACT" ] || $COMPACT
$COMPACT
verificar

exit 0


