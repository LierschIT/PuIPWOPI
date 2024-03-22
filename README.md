# PuIPWOPI
## Description
This script looks for the actual public IP address and add this IP to the WOPI configuration of Nextcloud.
It uses the OpenSource Projekt https://ipify.org to gather the public IP.

## Usage
Download or Copy the script into an editor and save it.
Use chmod +x to make it executable.
Now for example you can use crontag -e to start the script every day or hour.

My crontab job looks like that:

 > 20 0/3 * * * /{PATH-TO-FILE}/pubipwopi.sh >> /dev/null
