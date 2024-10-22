#!/bin/sh

export NODE_ENV=production
echo $DB_PATH 0 $HOST 0 $SERVER
mkdir $DB_PATH
chown -R electerm:electerm $DB_PATH


runuser -l electerm -c "cd /app/electerm-web && NODE_ENV=production HOST=${HOST} DB_PATH=${DB_PATH} SERVER=${SERVER} node ./src/app/app.js"