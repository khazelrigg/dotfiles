#!/bin/bash
IPADDRESS=$(ip addr|grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1 -d'/')

if wget -qO- https://www.privateinternetaccess.com/pages/whats-my-ip|grep -q "You are protected by PIA"; then
    echo "%{F#{{ n_green }}}$IPADDRESS"
else
    echo "%{F#{{ n_red }}}$IPADDRESS"
fi
