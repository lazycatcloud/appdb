#!/bin/bash

mysql_ready() {
    echo mysqladmin ping --host=$MOODLE_DB_HOST --user=$MOODLE_DB_USER --password=$MOODLE_DB_PASS
    mysqladmin ping --host=$MOODLE_DB_HOST --user=$MOODLE_DB_USER --password=$MOODLE_DB_PASS >/dev/null 2>&1
}

ln -snf "/usr/share/zoneinfo/$TZ" /etc/localtime
echo "$TZ" >/etc/timezone

chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html
mkdir -p /var/www/moodledata
chown -R www-data:www-data /var/www/moodledata
chmod -R 755 /var/www/moodledata

cd /var/www/html || exit
php -r "phpinfo();" | grep max_input_vars
php -r "phpinfo();" | grep upload_max_filesize
php -r "phpinfo();" | grep post_max_size

# 禁用 moodle 中的跳转检查
sed -i '891s/^\(\s*redirect\)/\/\/\1/g; 911s/^\(\s*redirect\)/\/\/\1/g' lib/setuplib.php
# 首页就默认跳转到登陆，以使浏览所有页面时都会是登陆状态(自动登陆)
sed -i '52i isloggedin() || redirect(get_login_url());' index.php
# 中文语言包
cp -r /var/www/html/lang/zh_cn /var/www/moodledata/lang/

while ! (mysql_ready); do
    sleep 3
    echo "Waiting for database connection ..."
done

set -x
echo php ./admin/cli/install.php \
  --lang="$MOODLE_LANG" \
  --wwwroot="$MOODLE_URL" \
  --dbtype="$MOODLE_DB_TYPE" \
  --dbhost="$MOODLE_DB_HOST" \
  --dbname="$MOODLE_DB_NAME" \
  --dbuser="$MOODLE_DB_USER" \
  --dbpass="$MOODLE_DB_PASS" \
  --dbport="$MOODLE_DB_PORT" \
  --prefix="$MOODLE_DB_PREFIX" \
  --fullname="$MOODLE_FULLNAME" \
  --shortname="$MOODLE_SHORTNAME" \
  --summary="$MOODLE_SUMMARY" \
  --adminuser="$MOODLE_ADMIN_USER" \
  --adminpass="$MOODLE_ADMIN_PASS" \
  --adminemail="$MOODLE_ADMIN_EMAIL" \
  --agree-license \
  --allow-unstable \
  --non-interactive
  # --sitepreset="$MOODLE_SITEPRESET" \

set +x
if [ -f "config.php" ]; then
  chown www-data:www-data config.php
  exec "$@"
else
  echo "auto install moodle failed."
fi
  exec "$@"

