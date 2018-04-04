#!/bin/bash
date=`/bin/date +%d%m%Y_%H%M`
datestart=`/bin/date +%d%m%Y_%H%M`
echo "Starting Backup $datestart" >> /var/log/mongo_backup.log 

tar -czvf BackupMongo$date.tar.gz /var/lib/mongodb
dateend=`/bin/date +%d%m%Y_%H%M`

echo "Ending Backup $dateend" >> /var/log/mongo_backup.log 

