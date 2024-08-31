#!/bin/bash
if [ ! -f /shared/seafile_modified ]; then
	echo "modify setup-seafile-mysql.py"
	cp '/opt/seafile/seafile-server-8.0.7/setup-seafile-mysql.py.out' '/opt/seafile/seafile-server-8.0.7/setup-seafile-mysql.py'
	touch /shared/seafile_modified
fi

# log function
function log() {
    local time=$(date +"%F %T")
    echo "$time $1 "
    echo "[$time] $1 " &>> /opt/seafile/logs/enterpoint.log
}


# check nginx
while [ 1 ]; do
    process_num=$(ps -ef | grep "/usr/sbin/nginx" | grep -v "grep" | wc -l)
    if [ $process_num -eq 0 ]; then
        log "Waiting Nginx"
        sleep 0.2
    else
        log "Nginx ready"
        break
    fi
done


# start cluster server
if [[ $CLUSTER_SERVER == "true" && $SEAFILE_SERVER == "seafile-pro-server" ]] ;then
    log "--- Seafile cluster $CLUSTER_MODE mode ---"
    /scripts/cluster_start.sh &

# start server
else
    /scripts/start.py &
fi


log "This is a idle script (infinite loop) to keep container running."

function cleanup() {
    kill -s SIGTERM $!
    exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]; do
    sleep 60 &
    wait $!
done
