#! /bin/bash

eval "$(ssh-agent -s)"
exec ssh-agent bash
ssh-add ~/.ssh/id_ed25519
