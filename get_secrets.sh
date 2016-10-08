#!/usr/bin/env bash

# This script grabs all my secret files and sticks them in one place

SECRETS=~/.secrets/


mkdir -p $SECRETS

cp ~/.bash_secrets $SECRETS/bash_secrets.sh
cp ~/.shuttle.json $SECRETS/shuttle.json
cp -r ~/.config $SECRETS/config/
cp -r ~/.ssh $SECRETS/ssh/

#tar -czf secrets.tar.gz -C $SECRETS

# shuttle.json
# RSA Keys?
# ssh-config	
