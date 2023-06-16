#!/usr/bin/bash

##This script is used to execute below commands in 2 different servers

SERVER='student'
OUTPUT='/home/student/output'

for HOST in servera serverb;do
  ssh ${SERVER)@${HOST} hostname -f > ${OUTPUT}-${HOST} 
  echo "#########################################">> ${OUTPUT}-${HOST}

  ssh ${SERVER}@${HOST} lscpu | grep "^CPU" >> ${OUTPUT}-${HOST}
  echo "#########################################" >> ${OUTPUT}-${HOST} 

  ssh ${SERVER}@${HOST} grep -v "^$" /etc/selinux/config | grep -v "^#" >> ${OUTPUT}-${HOST} 
  echo "#########################################" >> ${OUTPUT}-${HOST}

  ssh ${SERVER}@${HOST} "sudo grep 'Failed password' /var/log/secure" >> ${OUTPUT}-${HOST}
  echo "#########################################" >> ${OUTPUT}-${HOST}
done
