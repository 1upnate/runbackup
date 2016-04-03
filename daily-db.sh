#!/bin/bash

# Takes a daily dump of all databases
# Removes dumps over 2 weeks old

date=$(date +%F)

mysqldump --all-databases > /backup/mariadb/daily/$date

echo "Daily Dump Completed for $date" | sendxmpp user@jabber-server.com

find /backup/mariadb/daily/* -mtime +8 -exec rm {} \;
