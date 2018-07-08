#! /bin/bash

SEND_TO="parth_shel@icloud.com"

IP_FILE="${HOME}/.ip"

CURR_IP=`dig +short myip.opendns.com @resolver1.opendns.com`

OLD_IP=`cat ${IP_FILE}`

echo ${CURR_IP}

if [ "$CURR_IP" != "$OLD_IP" ]; then
	# send e-mail and dump IP to file
	echo ${CURR_IP} > ${IP_FILE}
	DATE=`date +"%m/%d/%Y %H:%M:%S $HOSTNAME"`
	echo "${HOSTNAME}'s IP: ${CURR_IP}" | mail -s "GET IP - ${DATE}" ${SEND_TO}
	exit 0
else
	exit 1
fi
