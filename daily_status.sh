#!/bin/bash
#
# ver 1.0
#

DAILY_FILE="/home/dad/scripts/daily_status.out"
TODAY=$(date)
HOST=$(hostname)


mail -s "Testing 123" phil.janes@gmail.com <<'EOF'
Hello World
===========
EOF
