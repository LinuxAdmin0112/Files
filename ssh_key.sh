#!/usr/bin/expect -f

set timeout 20

set passphrase "Linux@0112"

spawn "./commit.sh"

expect "*passphrase*:"

send "$passphrase\r";

interact
