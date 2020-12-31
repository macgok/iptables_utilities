#!/bin/bash

iptables -t filter -L -v --line-numbers
iptables -t nat -L -v --line-numbers

echo "Done!\n"
