# runbackup

This is a quick and dirty backup script that I wrote to make it easier to run schedule backups. 


Requirements:
Tar
Pigz
Sendxmpp (Optional, for Jabber notifications)


Setup a cron job to run these scripts individually, or create a master script to run them both at once. You can change the destination by simply editing the file path in the script. Also, the script will remove backups older than 8 days. Again, you can change this by simply changing the "8" in the script. If you're using jabber, you can have it send you a message when it's finished running. 

The DB script simply makes a dump of all your databases. Pretty simple. The Web files script as of right now, runs a for loop through the home directory. Depending on your server configuration and what you want backed up, you might need to change this. 
