#!/bin/sh

/usr/bin/stop-container.sh

/opt/letsencrypt/venv/bin/letsencrypt renew -nvv --standalone > /var/log/letsencrypt/renew.log 2>&1
LE_STATUS=$?

/usr/bin/start-container.sh

if [ "$LE_STATUS" != 0 ]; then
    echo "Automated renewal failed:"
    cat /var/log/letsencrypt/renew.log
    exit 1
fi
echo "Automated renewal done"