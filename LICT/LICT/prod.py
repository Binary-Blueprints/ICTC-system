from .settings import *

DEBUG = True
DATABASES = {
    "default": {
        "ENGINE": os.environ.get("SQL_ENGINE", "django.db.backends.sqlite3"),
        "NAME": os.environ.get("SQL_DATABASE", BASE_DIR / "db.sqlite3"),
        "USER": os.environ.get("SQL_USER", "user"),
        "PASSWORD": os.environ.get("SQL_PASSWORD", "password"),
        "HOST": os.environ.get("SQL_HOST", "localhost"),
        "PORT": os.environ.get("SQL_PORT", "5432"),
    }
}

# CREATE USER ictc_admin WITH PASSWORD '@a1b2c3d4e5';

# ALTER ROLE ictc_admin SET client_encoding TO 'utf8';
# ALTER ROLE ictc_admin SET default_transaction_isolation TO 'read committed';
# ALTER ROLE ictc_admin SET timezone TO 'UTC';

# GRANT ALL PRIVILEGES ON DATABASE ictc TO ictc_admin;