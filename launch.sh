#! /bin/sh

set -e

cd /opt/sickrage
git pull

#service sickrage start &
#exec /opt/sickrage/SickBeard.py --pidfile=/data/sickrage/.sickrage.pid --datadir=/data/sickrage &
python /opt/sickrage/SickBeard.py --pidfile=/data/sickrage/.sickrage.pid --datadir=/data/sickrage &
wait



# exec /opt/sickrage/SickBeard.py
