export NEW_RELIC_CONFIG_FILE=/home/isucon/newrelic.ini
/home/isucon/torb/webapp/python/venv/bin/newrelic-admin run-program /home/isucon/torb/webapp/python/venv/bin/gunicorn app:app -b '127.0.0.1:8080' --access-logfile /home/isucon/python_torb.log
