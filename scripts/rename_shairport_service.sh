#!/bin/sh
# Script to change the Shairport's service name, to be placed in /usr/bin/

service_name="$1"
sed -i -E 's/  name = \".*/  name = "'"$service_name"'";/' /data/etc/shairport-sync.conf
systemctl restart shairport-sync