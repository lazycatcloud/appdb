
if [ ! -f "/data/db/WiredTiger" ]; then
	echo "uncompress initialized config"
	cd /data
	tar xzvf /db.tar.gz
	cd -
fi

which mongod
/usr/bin/mongod --bind_ip_all
