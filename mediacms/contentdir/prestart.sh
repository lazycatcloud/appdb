#!/bin/bash

RANDOM_ADMIN_PASS=`python -c "import secrets;chars = 'abcdefghijklmnopqrstuvwxyz0123456789';print(''.join(secrets.choice(chars) for i in range(10)))"`
ADMIN_PASSWORD=${ADMIN_PASSWORD:-$RANDOM_ADMIN_PASS}
POSTGRES_HOST="${LAZYCAT_USER_ID}.db.cloud.lazycat.app.mediacms.lzcapp"
echo "$POSTGRES_HOST"
REDIS_LOCATION="redis://${LAZYCAT_USER_ID}.redis.cloud.lazycat.app.mediacms.lzcapp:6379/1"
echo "$REDIS_LOCATION"

if [[ -n $ISMIGRATION ]]; then
  whoami
fi
sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources
apt update
apt install -y postgresql-client
# apt install -y netcat-openbsd
POSTGRES_USER="mediacms"
POSTGRES_PASSWORD="mediacms"
echo PGPASSWORD=$POSTGRES_PASSWORD psql -h $POSTGRES_HOST -U $POSTGRES_USER -c "SELECT mediacms;"
# echo nc -z -w 2 $POSTGRES_HOST 5432
while true; do
  if PGPASSWORD=$POSTGRES_PASSWORD psql -h $POSTGRES_HOST -U $POSTGRES_USER -c "SELECT 1;"; then
  # if nc -z -w 2 $POSTGRES_HOST 5432; then
    echo "数据库服务已连接"
    break
  else
    echo "无法连接到数据库服务，将在5秒后重试..."
    sleep 5
  fi
done

if [ X"$ENABLE_MIGRATIONS" = X"yes" ]; then
    echo "Running migrations service"
    python manage.py migrate
    EXISTING_INSTALLATION=`echo "from users.models import User; print(User.objects.exists())" |python manage.py shell`
    if [ "$EXISTING_INSTALLATION" = "True" ]; then 
        echo "Loaddata has already run"
    else
        echo "Running loaddata and creating admin user"
        python manage.py loaddata fixtures/encoding_profiles.json
        python manage.py loaddata fixtures/categories.json
    	  # post_save, needs redis to succeed (ie. migrate depends on redis)
        echo DJANGO_SUPERUSER_PASSWORD=$ADMIN_PASSWORD "python manage.py createsuperuser --no-input --username=$ADMIN_USER --email=$ADMIN_EMAIL --database=default" || true
        DJANGO_SUPERUSER_PASSWORD=$ADMIN_PASSWORD python manage.py createsuperuser --no-input --username=$ADMIN_USER --email=$ADMIN_EMAIL --database=default || true
        echo "Created admin user with password: $ADMIN_PASSWORD"

    fi
    echo "RUNNING COLLECTSTATIC"

    python manage.py collectstatic --noinput

    # echo "Updating hostname ..."
    # TODO: Get the FRONTEND_HOST from cms/local_settings.py
    # echo "from django.contrib.sites.models import Site; Site.objects.update(name='$FRONTEND_HOST', domain='$FRONTEND_HOST')" | python manage.py shell
fi

# Setting up internal nginx server
# HTTPS setup is delegated to a reverse proxy running infront of the application

cp deploy/docker/nginx_http_only.conf /etc/nginx/sites-available/default
cp deploy/docker/nginx_http_only.conf /etc/nginx/sites-enabled/default
cp deploy/docker/uwsgi_params /etc/nginx/sites-enabled/uwsgi_params
cp deploy/docker/nginx.conf /etc/nginx/

#### Supervisord Configurations #####

cp deploy/docker/supervisord/supervisord-debian.conf /etc/supervisor/conf.d/supervisord-debian.conf

if [ X"$ENABLE_UWSGI" = X"yes" ] ; then
    echo "Enabling uwsgi app server"
    cp deploy/docker/supervisord/supervisord-uwsgi.conf /etc/supervisor/conf.d/supervisord-uwsgi.conf
fi

if [ X"$ENABLE_NGINX" = X"yes" ] ; then
    echo "Enabling nginx as uwsgi app proxy and media server"
    cp deploy/docker/supervisord/supervisord-nginx.conf /etc/supervisor/conf.d/supervisord-nginx.conf
fi

if [ X"$ENABLE_CELERY_BEAT" = X"yes" ] ; then
    echo "Enabling celery-beat scheduling server"
    cp deploy/docker/supervisord/supervisord-celery_beat.conf /etc/supervisor/conf.d/supervisord-celery_beat.conf
fi

if [ X"$ENABLE_CELERY_SHORT" = X"yes" ] ; then
    echo "Enabling celery-short task worker"
    cp deploy/docker/supervisord/supervisord-celery_short.conf /etc/supervisor/conf.d/supervisord-celery_short.conf
fi

if [ X"$ENABLE_CELERY_LONG" = X"yes" ] ; then
    echo "Enabling celery-long task worker"
    cp deploy/docker/supervisord/supervisord-celery_long.conf /etc/supervisor/conf.d/supervisord-celery_long.conf
fi

if [[ -n $ISMIGRATION ]]; then
  echo "ISMIGRATION and sleep infinity"
  sleep infinity
fi