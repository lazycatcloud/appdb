#!/usr/bin/env bash
set -Eeuo pipefail
echo "=============================="
sed -i '/exec "$@"/d' /usr/local/bin/docker-entrypoint.sh
/usr/local/bin/docker-entrypoint.sh $@
echo "=============================="
mkdir -p /var/www/html/wp-content/mu-plugins
chown -Rf www-data:www-data /var/www/db
chown -Rf www-data:www-data /var/www/html

cp /lzc_conf/wp-config.php /var/www/html/
cp /lzc_conf/sqlite-database-integration/db.copy /var/www/html/wp-content/db.php
cp /lzc_conf/auto-login-wordpress.php /var/www/html/wp-content/mu-plugins/
cp -r /lzc_conf/sqlite-database-integration /var/www/html/wp-content/plugins/

# Check if all required environment variables are set
if [[ -z "${WORDPRESS_URL}" || -z "${WORDPRESS_TITLE}" || -z "${WORDPRESS_ADMINNAME}" || -z "${WORDPRESS_ADMINPASS}" || -z "${WORDPRESS_EMAIL}" ]]; then
	echo "One or more required environment variables are missing"
	echo wp core install --locale=zh_CN --allow-root --url="${WORDPRESS_URL}" --title="${WORDPRESS_TITLE}" --admin_user="${WORDPRESS_ADMINNAME}" --admin_password="${WORDPRESS_ADMINPASS}" --admin_email="${WORDPRESS_EMAIL}" --skip-email
	exit 1
fi

wp core install --allow-root --url="${WORDPRESS_URL}" --title="${WORDPRESS_TITLE}" --admin_user="${WORDPRESS_ADMINNAME}" --admin_password="${WORDPRESS_ADMINPASS}" --admin_email="${WORDPRESS_EMAIL}" --skip-email

exec "$@"
