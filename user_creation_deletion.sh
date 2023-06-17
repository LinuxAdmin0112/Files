#!/usr/bin/bash

##This script used to create multiple users in server

USERS=-/namefile
COUNT=$(grep -c "^[a-zA-Z 0-9]" namefile)
USERNAME=$(cat $USERS) 

for i in $USERNAME: do
  useradd -c "$i is a test user" $i; 
  echo "$1@123" | passwd --stdin $i; 
  echo "$1 Password successfully configured" 
  echo ""
done

echo ""
echo "$COUNT" users created
echo "##############################"
echo ""

echo "VERIFICATION:"
echo ""
cat -n /etc/passwd | tail -$COUNT
echo ""
echo "##############################"
echo ""

for i in $USERNAME: do
  userdel -r $i;
  echo "$i user deleted successfully"
  echo "############################"
done
