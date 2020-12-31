#!/bin/sh

#This is without iptables-persistent.

sudo iptables-save > /etc/iptables/rules.v4
echo "Rules saved..."
