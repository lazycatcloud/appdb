import os

print("-------------------------------------------------")
lazycat_app = os.environ.get('LAZYCAT_APP_DOMAIN')
FRONTEND_HOST = 'http://' + lazycat_app
# print(FRONTEND_HOST)

PORTAL_NAME = 'MediaCMS'
SECRET_KEY = 'ma!s3^b-cw!f#7s6s0m3*jx77a@riw(7701**(r=ww%w!2+yk2'
# Get the value of the LAZYCAT_USER_ID environment variable
lazycat_user_id = os.environ.get('LAZYCAT_USER_ID')
# print(lazycat_user_id)
POSTGRES_HOST = lazycat_user_id + '.db.cloud.lazycat.app.mediacms.lzcapp'
# print(POSTGRES_HOST)
REDIS_LOCATION = "redis://"+lazycat_user_id+".redis.cloud.lazycat.app.mediacms.lzcapp:6379/1"
# print(REDIS_LOCATION)

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql",
        "NAME": "mediacms",
        "HOST": POSTGRES_HOST,
        "PORT": "5432",
        "USER": "mediacms",
        "PASSWORD": "mediacms",
    }
}

CACHES = {
    "default": {
        "BACKEND": "django_redis.cache.RedisCache",
        "LOCATION": REDIS_LOCATION,
        "OPTIONS": {
            "CLIENT_CLASS": "django_redis.client.DefaultClient",
        },
    }
}

# CELERY STUFF
BROKER_URL = REDIS_LOCATION
CELERY_RESULT_BACKEND = BROKER_URL

MP4HLS_COMMAND = "/home/mediacms.io/bento4/bin/mp4hls"

# DEBUG = False
DEBUG = True
