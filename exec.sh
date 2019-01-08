#!/bin/bash
# printf "%s" "waiting for Browser Server ..."
# while ! timeout 0.2 ping -c 1 -n 127.0.0.1 &> /dev/null
# do
#     printf "%c" "."
# done
# printf "\n%s\n"  "Server is online"

echo " Start browser Server successfully, .... execute test"
sleep 1m

robot --listener ./RobotFrameworkSlackNotifier.py  --outputdir ./result SuitesUI/* 
