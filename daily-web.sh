#!/bin/bash

#creates a daily tarball of the home directory

d=$(date +%m-%d)
#echo "$d"

for i in $(\ls /home); do tar cf - /home/$i | pigz > /backup/home/daily/$i.$d.tar.gz; done

find /backup/home/daily/* -mtime +8 -exec rm {} \;

echo "Web Files have been archived on" $d | sendxmpp user@jabber-server.com
