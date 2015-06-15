#!/bin/bash
#
# ver 1.2
#

DAILY_FILE="/home/dad/io_scripts/daily_status.out"
SUBJECT="io daily status report ver 1.2"
TODAY=$(date)
HOST=$(hostname)

echo $TODAY > $DAILY_FILE
echo "$HOST is alive!" >> $DAILY_FILE

cat $DAILY_FILE | mail -s "$SUBJECT" phil.janes@gmail.com 
