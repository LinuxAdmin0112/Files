#!/usr/bin/bash

echo "What is the name of the user want to create?" 
read USER1 
export USER1 
echo "1. The name of user is $USER1" 
echo ""

grep $USER1 /etc/passwd

if [[ $? -eq 0 ]]; then
    echo "2. SUSER1 already created"
    echo "3. REF: $(tail -1 /etc/passwd)"
    echo "*********************************************************"
else
    echo "2. creating new user $USER1" 
    useradd -c "Newly created" $USER1
    echo "3. REF: $(tail -1 /etc/passwd)" 
    echo "*********************************************************"
fi
