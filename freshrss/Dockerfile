# docker build -t registry.lazycat.cloud/freshrss/freshrss:1.27.1 .
# docker run -it --name rss --rm registry.lazycat.cloud/freshrss/freshrss:1.27.1
# docker exec -it rss bash
FROM freshrss/freshrss:1.27.1
RUN /app/www/cli/do-install.php \
	--default_user admin \
	--auth_type form \
	--db-type sqlite
RUN /bin/sed -i "3i\ \'unsafe_autologin_enabled\' => true," /app/www/data/config.php \
	&& /bin/sed -n "3p" /app/www/data/config.php

RUN /app/www/cli/create-user.php \
	--user admin \
	--password admin \
	--language zh-cn

RUN curl -sSL https://gitee.com/clh21/sh/raw/master/mirror.sh | sh

# ```
# if (!isset($_GET['p'])) {
#     header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
#     header("Cache-Control: post-check=0, pre-check=0", false);
#     header("Pragma: no-cache");
#     $loginUrl='http://'.$_SERVER['HTTP_HOST'].'/i/?c=auth&a=login&u=admin&p=admin';
#     die('<meta http-equiv="refresh" content="3;url='.$loginUrl.'" />');
# }
# ```
# RUN /bin/sed -i "78i\ header('Location: http://'.\$_SERVER['HTTP_HOST'].'/i/?c=auth&a=login&u=admin&p=admin');" /app/www/app/Controllers/authController.php
RUN /bin/sed -i "78i\ if (!isset(\$_GET['p'])) {" /app/www/app/Controllers/authController.php
RUN /bin/sed -i "79i\     header(\"Cache-Control: no-store, no-cache, must-revalidate, max-age=0\");" /app/www/app/Controllers/authController.php
RUN /bin/sed -i "80i\     header(\"Cache-Control: post-check=0, pre-check=0\", false);" /app/www/app/Controllers/authController.php
RUN /bin/sed -i "81i\     header(\"Pragma: no-cache\");" /app/www/app/Controllers/authController.php
RUN /bin/sed -i "82i\     \$loginUrl='/i/?c=auth&a=login&u=admin&p=admin';" /app/www/app/Controllers/authController.php
RUN /bin/sed -i "83i\     die('<meta http-equiv=\"refresh\" content=\"1;url='.\$loginUrl.'\" />');" /app/www/app/Controllers/authController.php
RUN /bin/sed -i "84i\ }" /app/www/app/Controllers/authController.php

#RUN curl -sSL https://gitee.com/clh21/sh/raw/master/mirror.sh | sh
#RUN apk add vim
#RUN /bin/sed -i "78s/'formLogin'))/'formLogin', 'u'=>'admin', 'p'=>'admin'))/" /app/www/app/Controllers/authController.php \
#	&& /bin/sed -n "78p" /app/www/app/Controllers/authController.php
