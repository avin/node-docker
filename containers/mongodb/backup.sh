#! /bin/sh
 
TIMESTAMP=$(date +"%F")
BACKUP_DIR="/backup/$TIMESTAMP"

mongodump -o $BACKUP_DIR