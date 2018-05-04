#!/usr/bin/env sh

echo "** Installing OS Dependencies **"

# lita needs redis
apt-get install redis-server -qy

# your daemon script needs this
apt-get install make -qy

echo "** Installing Lita and starting it! **"
make run

echo "** Scheduling Lita to Rebuild from Docker Hub Hourly **"
crontab ./lita_crontab

echo "** Done! Waiting 5 seconds then showing docker logs. **"

sleep 5
make log
