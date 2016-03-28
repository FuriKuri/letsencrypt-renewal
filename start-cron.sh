#!/bin/sh

if [ ! -f /usr/bin/start-container.sh ]; then
    echo "docker start $CONTAINER_NAME" >> /usr/bin/start-container.sh
    chmod +x /usr/bin/start-container.sh
fi
if [ ! -f /usr/bin/stop-container.sh ]; then
    echo "docker stop $CONTAINER_NAME" >> /usr/bin/stop-container.sh
    chmod +x /usr/bin/stop-container.sh
fi

rsyslogd
cron
touch /var/log/cron.log
tail -F /var/log/syslog /var/log/cron.log