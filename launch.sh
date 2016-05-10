#! /bin/sh

set -e

#service sickrage start &
exec /opt/sickrage/SickBeard.py &
wait



# exec /opt/sickrage/SickBeard.py
