#!/bin/bash
export MARIADB_ROOT_PASSWORD=aI9DCyNpEKWe9pn5
/usr/local/bin/docker-entrypoint.sh mariadbd &
chmod u+x /wiz/app/wait-for-it.sh
/wiz/app/wait-for-it.sh -h localhost -p 3306 -t 60
bash /wiz/app/entrypoint.sh
