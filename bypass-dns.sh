#!/bin/bash/

echo ""

ping -c 2 $2 | head -n 3

echo ""

sudo echo $1 " " $2  >> /etc/hosts

echo -e  ">>> Domain $2 resolved to $1 in local \n"

ping -c 2 $2 | head -n 3

echo ""

open -n -a "Google Chrome" --args -incognito "--new-window" http://$2
