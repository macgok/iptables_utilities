#!/bin/bash

#Store all TCP packets hitting the server from the Internet
#172.16.90.36 is the m/c connecting to the server using ssh
iptables -t filter -A INPUT -p tcp -i eth0 ! -s 172.16.90.36 -d 182.75.45.249/27 -j LOG --log-prefix "TCP Outside Traffic"

#Store all UDP packets hitting the server from the Internet
iptables -t filter -A INPUT -p udp -i eth0 ! -s 172.16.90.36 -d 182.75.45.249/27 -j LOG --log-prefix "UDP Outside Traffic"

#Store all other packets hitting the server from the Internet
iptables -t filter -A INPUT -i eth0 ! -s 172.16.90.36 -d 182.75.45.249/27 -j LOG --log-prefix "Other Outside Traffic"

echo "Rules added successfully!"
