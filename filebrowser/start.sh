
alias runas="sudo -u xfs "
sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories
apk add --allow-untrusted /app/sudo-1.9.8_p2-r1.apk
function init(){
    chown -R xfs:xfs /app/
    chown -R xfs:xfs /srv/
    runas /filebrowser config init

    runas /filebrowser users add admin admin --locale zh-cn --scope admin/ --perm.admin
    runas /filebrowser users add demo demo --locale zh-cn --scope demo/
}

if [ ! -f "/app/INITIALIZED" ]; then
	init
	touch "/app/INITIALIZED"
fi

runas /filebrowser
