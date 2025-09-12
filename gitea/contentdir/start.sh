#!/bin/sh

ls /data/admin_user_created || su-exec git gitea admin user create  \
	--name root --password temppwd --email root@${DOMAIN} --admin
touch /data/admin_user_created

ls /data/ldap-auth-added || su-exec git gitea admin auth add-ldap  \
	--name ldap --security-protocol unencrypted  \
	--host "${LDAP_HOST}" --port ${LDAP_PORT}  \
	--user-search-base "${LDAP_BASE_DN}"  \
	--bind-dn "${LDAP_BIND_DN}" --bind-password "${LDAP_BIND_PASS}"  \
	--user-filter '(&(objectClass=person)(|(uid=%[1]s)(mail=%[1]s)))'  \
	--email-attribute mail  \
	--synchronize-users
touch /data/ldap-auth-added

# exec /bin/s6-svscan /etc/s6
