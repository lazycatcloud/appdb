#!/bin/bash

function initialize(){
	rm -rf /lzcapp/var/data
	cp -r /lzcapp/pkg/content/data /lzcapp/var/data
}

if [ ! -f "/lzcapp/var/data/INSTALLED" ]; then
    initialize
    touch /lzcapp/var/data/INSTALLED
fi

#sed -i -E "s|<OidClientId>[0-9a-zA-Z_]+</OidClientId>|<OidClientId>$OAUTH2_CLIENT_ID</OidClientId>|" /lzcapp/var/data/plugins/configurations/SSO-Auth.xml
#sed -i -E "s|<OidEndpoint>[0-9a-zA-Z_]+</OidEndpoint>|<OidEndpoint>$OAUTH2_SERVER_URL</OidEndpoint>|" /lzcapp/var/data/plugins/configurations/SSO-Auth.xml
#sed -i -E "s|<OidSecret>[0-9a-zA-Z_]+</OidSecret>|<OidSecret>$OAUTH2_CLIENT_SECRET</OidSecret>|" /lzcapp/var/data/plugins/configurations/SSO-Auth.xml

/jellyfin/jellyfin --datadir /lzcapp/var/data --cachedir /lzcapp/cache --ffmpeg /usr/lib/jellyfin-ffmpeg/ffmpeg
