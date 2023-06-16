#!/usr/bin/bash

echo "What is the name of the user want to delete?" 
read USER1 
export USER1 
echo "1. The name of user is $USER1" 
echo ""

grep $USER1 /etc/passwd

if [[ $? -eq 0 ]]; then
      userdel -r $USER1
      echo "2. $USER1 deleted successfully"
      echo "**********************************************"

else
      echo "2. SUSERI not found"
      echo "**********************************************"

fi
