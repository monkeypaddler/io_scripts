#!/bin/sh

#
# version 1.1
#

SUBJ="io IP has changed"
EMAIL="monkeypaddlerpi@gmail.com"
LOGFILE=/home/dad/scripts/ipmail.log

echo "Firing ipmail.sh script...`date`" >> $LOGFILE

ip1=""
ip2=""

read ip1 < /home/dad/scripts/ip.txt
ip2=$(wget -qO- ifconfig.me/ip)



if [ "$ip1" = "$ip2" ]
then
  exit
else
  echo "$ip2" > /home/dad/scripts/ip.txt
  echo "$ip2" | mail -s "$SUBJ" $EMAIL
  exit
fi
