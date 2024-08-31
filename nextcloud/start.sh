#!/bin/bash
if [ -z $APP_ORIGIN ];then
	echo "environment variable APP_ORIGIN is needed"
	exit 1
fi

echo $LDAP_ADMIN_PASSWORD

bash /entrypoint.sh apache2-foreground &

while [ ! -f '/var/www/html/config/NC_Is_Up' ]; do 
    echo "waiting for next cloud up"
    sleep 1; 
done;
rm /var/www/html/config/NC_Is_Up

function initPath() {
    DIR=/userdata/$1
    TAR=/var/www/html/data/$1\@heiyu.space
    if [ $2 = "init" ]; then
	echo "### creating paths"
        if [ ! -d $DIR ]; then
            mkdir $DIR
        fi
        mkdir $TAR/files -p
        chown www-data:www-data -R $TAR
    else
	echo "### binding paths"
        mount --bind $DIR $TAR/files
    fi
}
function installApps() {
    echo "### Installing apps"
    cd /var/www/html/custom_apps
    tar xzvf /mnt/onlyoffice.tar.gz
    occ app:enable onlyoffice
}

alias occ="runuser --user=www-data -- php /var/www/html/occ"
shopt -s expand_aliases
arrayL=(${LDAP_HOST//:/ })
if [ ! -f '/var/www/html/data/NC_Is_Installed' ]; then
    echo "executing initiallize install"
    touch /var/www/html/data/NC_Is_Installed
    occ maintenance:install --database "sqlite" --admin-user "admin123" --admin-pass "admin123" --data-dir "/var/www/html/data" -n
    occ config:system:set trusted_domains 0 --value=$APP_ORIGIN
    occ config:system:set filesystem_check_changes --value=1
    occ config:system:set overwrite,cli.url --value="https://$APP_ORIGIN"
    occ config:system:set overwriteprotocol --value=https
    occ app:enable user_ldap
    # ldap configs //TODO use envs to config
    occ ldap:create-empty-config
    occ ldap:set-config s01 ldapHost ${arrayL[0]}
    occ ldap:set-config s01 ldapPort ${arrayL[1]}
    occ ldap:set-config s01 ldapAgentName ${LDAP_BIND_DN}
    occ ldap:set-config s01 ldapAgentPassword ${LDAP_ADMIN_PASSWORD}
    occ ldap:set-config s01 ldapBase ${LDAP_BASE_DN}
    occ ldap:set-config s01 ldapLoginFilterUsername 1
    occ ldap:set-config s01 ldapLoginFilterEmail 1
    occ ldap:set-config s01 ldapLoginFilterAttributes uid
    occ ldap:set-config s01 ldapLoginFilter "(&(|(objectclass=person))(|(uid=%uid)(|(mailPrimaryAddress=%uid)(mail=%uid))(|(uid=%uid))))"
    occ ldap:set-config s01 ldapGroupFilterObjectclass groupOfNames
    occ ldap:set-config s01 ldapGroupMemberAssocAttr member
    occ ldap:set-config s01 ldapGroupFilter "(&(|(objectclass=person)))"
    occ ldap:set-config s01 ldapUserFilterObjectclass inetOrgPerson
    occ ldap:set-config s01 ldapUserFilter "(|(objectclass=inetOrgPerson))"
    occ ldap:set-config s01 ldapUserDisplayName uid
    occ ldap:test-config s01
    occ ldap:set-config s01 ldapConfigurationActive 1
    occ ldap:set-config  ldapExpertUsernameAttr uid
    initPath demo init
    initPath admin init
fi
echo "## binding"
initPath demo binding
initPath admin binding
installApps
while [ ! -f '/var/www/html/config/config.php' ]; do 
    sleep 1; 
done;

if [[ ! `cat /var/www/html/config/config.php` =~ 'appstoreenabled' ]]; then 
    echo "executing appstore url configuration"
    sed -i "s#);#  'appstoreenabled' => true,\n  'skeletondirectory' => '',\n  'appstoreurl' => 'https://www.orcy.net/ncapps/v1/',\n);#g" /var/www/html/config/config.php;
fi;
       	
sleep 315360000

