# SSRS - (Server Service Restart Script)
Edit file according to what services you wish to check and restart if they crash or are stopped.

# Cronjob
You will need to setup a cronjob on your system.

Mine is - */5 * * * * /opt/startifdown.sh >/dev/null 2>&1 <br/>
You can generate your own here - https://crontab-generator.org/

