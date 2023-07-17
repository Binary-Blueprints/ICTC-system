from .settings import *

DEBUG = False
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'ictc',
        'USER': 'ictc_admin',
        'PASSWORD': '@a1b2c3d4e5',
        'HOST': 'localhost',
        'PORT': '5432',
        'OPTIONS':{
            "sslmode":"require"
        },
    }
}
