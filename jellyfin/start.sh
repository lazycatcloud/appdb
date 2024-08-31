#!/bin/bash

set -eu

export NODE_ENV=production

arrayL=(${LDAP_HOST//:/ })
CLOUDRON_LDAP_SERVER=${arrayL[0]}
CLOUDRON_LDAP_PORT=${arrayL[1]}
echo $CLOUDRON_LDAP_SERVER
echo $CLOUDRON_LDAP_PORT
TMPSTR=`ping -4 ${CLOUDRON_LDAP_SERVER} -c 1 | sed '1{s/[^(]*(//;s/).*//;q}'`
echo ${TMPSTR} ${CLOUDRON_LDAP_SERVER} >> /etc/hosts

function install(){
mkdir -p /app/data/jellyfin/data/data \
    /app/data/jellyfin/data/plugins/ \
    /app/data/jellyfin/config/users/admin \
    /app/data/jellyfin/log \
    /app/data/jellyfin/data/plugins/configurations/ \
    /app/data/files/TV\ Shows/ \
    /app/data/files/Movies/ \
    /run/jellyfin/cache

cp /app/code/jellyfin_ldap/meta.json.orig /app/data/jellyfin/jellyfin_ldap.meta.json

# Copy over latest LDAP plugin. Do not symlink because jellyfin writes to this directory
rm -f /app/data/jellyfin/data/plugins/LDAP\ Authentication || true # can be a symlink from previous releases
rm -rf /app/data/jellyfin/data/plugins/LDAP\ Authentication
mkdir /app/data/jellyfin/data/plugins/LDAP\ Authentication/
cp -r /app/code/jellyfin_ldap/* /app/data/jellyfin/data/plugins/LDAP\ Authentication/

cat > /app/data/jellyfin/data/plugins/configurations/LDAP-Auth.xml <<EOF
<?xml version="1.0"?>
<PluginConfiguration xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <LdapServer>${CLOUDRON_LDAP_SERVER}</LdapServer>
  <LdapBaseDn>${CLOUDRON_LDAP_USERS_BASE_DN}</LdapBaseDn>
  <LdapPort>${CLOUDRON_LDAP_PORT}</LdapPort>
  <LdapSearchAttributes>uid, mail</LdapSearchAttributes>
  <LdapUsernameAttribute>uid</LdapUsernameAttribute>
  <LdapSearchFilter>(objectClass=person)</LdapSearchFilter>
  <LdapAdminFilter>(objectclass=FAKE)</LdapAdminFilter>
  <LdapBindUser>${CLOUDRON_LDAP_BIND_DN}</LdapBindUser>
  <LdapBindPassword>${CLOUDRON_LDAP_BIND_PASSWORD}</LdapBindPassword> 
  <CreateUsersFromLdap>true</CreateUsersFromLdap>
  <UseSsl>false</UseSsl>
  <UseStartTls>false</UseStartTls>
  <SkipSslVerify>false</SkipSslVerify>
</PluginConfiguration>
EOF
}

if [ ! -f "/app/data/INSTALLED" ]; then
    install
    touch /app/data/INSTALLED
fi

echo "==> Changing ownership"
chown -R cloudron:cloudron /app/data /run/jellyfin

echo "==> Starting Jellyfin"
exec /usr/bin/jellyfin --datadir /app/data/jellyfin/data --configdir /app/data/jellyfin/config --logdir /app/data/jellyfin/log --cachedir /run/jellyfin/cache --package-name cloudron-jellyfin --ffmpeg /usr/share/jellyfin-ffmpeg/ffmpeg
