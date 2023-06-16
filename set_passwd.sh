!/usr/bin/bash

read -p "Password setting user name: " USER1

grep $USER1 /etc/passwd

if [[ $? -eq 0 ]]; then
      passwd $USER1
      echo "Your passwd is Encrypted"
else
      echo "$USER1 is not exists"
fi
