#!/bin/bash
# Author: LierschIT
# Created: 2024-03-22
# Description: This script looks for the actual public IP address and add this IP to the WOPI configuration of Nextcloud.

ip=""
ip=$(curl -s https://api.ipify.org)

if [$ip != ""]
then
    sudo -u www-data php occ config:app:set richdocuments wopi_allowlist --value=$ip
else
    echo "Public IP can't be optained. Update of WOPI not possible.
fi
