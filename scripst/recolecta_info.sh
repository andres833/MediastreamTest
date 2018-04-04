#!/bin/bash

#Ultimas 3 lineas del archivo  /var/log/syslog
tail -n3 /var/log/syslog >> /mediastream/recolecta_info.log

#Espacio de disco utilizado en el raid
df -h | grep md0 >> /mediastream/recolecta_info.log
#Generar el hash del archivo  /var/log/auth.log

md5sum /var/log/auth.log | awk -F" " '{print $1}' >> /mediastream/recolecta_info.log
