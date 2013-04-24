#!/bin/bash
# 2012 Maus Stearns, 
# Quick ssh tunneling / reconnect tool
# Used primarily for quick synergy tunnels. 
RHOST=192.168.1.1
RPORT=24800
PID=$(ps -ef |grep ssh |grep $RPORT | awk '{print $2}')

if [ -n "$PID" ]; then
    echo "Existing Connection Exists. $PID"
    kill -9 $PID
fi

ssh -f -N -L $RPORT:$RHOST:$RPORT $RHOST
# # When using a OSX / Synergy Use
# open /Applications/Synergy.app
# # if on nix*
# synergyc localhost:24800 
