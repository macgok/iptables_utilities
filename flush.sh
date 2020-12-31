#!/bin/bash

iptables -t filter -F
iptables -t nat -F

#Clear packet and byte counters
iptables -Z
iptables -t nat -Z

echo "Flushed filter and nat table\n"
