#!/usr/bin/expect

set timeout 20

set passphrase "Linux@0112"

spawn "./commit.sh"

expect "Enter passphrase for ~/.ssh/id_ed25519:"

send "$passphrase\r";

interact
