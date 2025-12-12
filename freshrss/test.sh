#!/usr/bin/env bash
# leehom Chen clh021@gmail.com
# 本脚本旨在提供一个用于快速编写 shell 脚本模板
set -e
docker rm -f rss
docker run -d --rm --name=rss -p 80:80 freshrss/freshrss:1.27.1
docker exec -it rss bash

# docker exec -it rss /app/www/cli/prepare.php
# docker exec -it rss chown -R :www-data . && chmod -R g+r . && chmod -R g+w ./data/

# docker exec -it rss /app/www/cli/do-install.php --default_user admin --auth_type form --environment production --language zh-cn --title FreshRSS --api_enabled --db-type sqlite

# docker exec -it rss /app/www/cli/do-install.php \
# 	--default_user admin \
# 	--auth_type form \
# 	--db-type sqlite

# docker exec -it rss /app/www/cli/create-user.php --user admin --password admin --language zh-cn

# docker exec -it rss sed -i "3i\  \'unsafe_autologin_enabled\' => true," /app/www/data/config.php
# docker exec -it rss sed -n '3p' /app/www/data/config.php
# docker exec -it rss sed -i "78s/'formLogin'))/'formLogin', 'u'=>'admin', 'p'=>'admin'))/" /app/www/app/Controllers/authController.php
# docker exec -it rss sed -n '78p' /app/www/app/Controllers/authController.php
