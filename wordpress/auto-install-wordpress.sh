#!/bin/bash

mysql_ready() {
	echo mysqladmin ping --host="${WORDPRESS_DB_HOST}" --user="${WORDPRESS_DB_USER}" --password="${WORDPRESS_DB_PASSWORD}"
	mysqladmin ping --host="${WORDPRESS_DB_HOST}" --user="${WORDPRESS_DB_USER}" --password="${WORDPRESS_DB_PASSWORD}" >/dev/null 2>&1
}

while ! (mysql_ready); do
	sleep 3
	echo "Waiting for database connection ..."
done

# 尝试连接MySQL
mysql_ping=$(mysqladmin ping --host="${WORDPRESS_DB_HOST}" --user="${WORDPRESS_DB_USER}" --password="${WORDPRESS_DB_PASSWORD}" 2>&1)

# 检查连接结果
if [[ "$mysql_ping" == "mysqld is alive" ]]; then
	echo "MySQL连接成功！"
else
	echo "无法连接到MySQL: $mysql_ping"
fi

# Check if all required environment variables are set
if [[ -z "${WORDPRESS_URL}" || -z "${WORDPRESS_TITLE}" || -z "${WORDPRESS_ADMINNAME}" || -z "${WORDPRESS_ADMINPASS}" || -z "${WORDPRESS_EMAIL}" ]]; then
	echo "One or more required environment variables are missing"
	echo wp core install --locale=zh_CN --allow-root --url="${WORDPRESS_URL}" --title="${WORDPRESS_TITLE}" --admin_user="${WORDPRESS_ADMINNAME}" --admin_password="${WORDPRESS_ADMINPASS}" --admin_email="${WORDPRESS_EMAIL}" --skip-email
	exit 1
fi

wp language core install zh_CN --allow-root
wp language core activate zh_CN --allow-root
# Execute wp core install command with required environment variables
# 此处无法让初始安装时创建的示例数据就使用中文，只能安装好语言，在登录后台时就显示中文语言
wp core install --locale=zh_CN --allow-root --url="${WORDPRESS_URL}" --title="${WORDPRESS_TITLE}" --admin_user="${WORDPRESS_ADMINNAME}" --admin_password="${WORDPRESS_ADMINPASS}" --admin_email="${WORDPRESS_EMAIL}" --skip-email

wp language core install zh_CN --allow-root
wp language core activate zh_CN --allow-root

# 读取 WORDPRESS_PLUGIN_DIR 环境变量
plugin_dir=${WORDPRESS_PLUGIN_DIR:-}

# 检查环境变量是否为空
if [ -z "$plugin_dir" ]; then
	echo "empty WORDPRESS_PLUGIN_DIR set to skip plugin install."
	exit 1
fi

# 检查目录是否存在
if [ ! -d "$plugin_dir" ]; then
	echo "目录 $plugin_dir 不存在"
	exit 1
fi

# 扫描目录下的所有 zip 文件，并安装和激活插件
for file in "$plugin_dir"/*.zip; do
	if [ -f "$file" ]; then
		filename=$(basename "$file")
		plugin_name="${filename%.*}"
		full_path_file="$plugin_dir/$filename"
		echo wp plugin install --allow-root "$full_path_file"
		wp plugin install --allow-root "$full_path_file"
		echo wp plugin activate --allow-root "$plugin_name"
		wp plugin activate --allow-root "$plugin_name"
	fi
done

if [ -d "$plugin_dir/mu-plugins" ]; then
	echo "目录 $plugin_dir/mu-plugins 存在，自动安装必用插件"
	set -x
	pwd
	mkdir -p wp-content/mu-plugins/
	ls -lah $plugin_dir/mu-plugins
	ls -lah wp-content/mu-plugins
	cp $plugin_dir/mu-plugins/*.php wp-content/mu-plugins/
fi

# wp language zh_CN
