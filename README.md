# SSRS - (Server Service Restart Script)
Edit file according to what services you wish to check and restart if they crash or are stopped.

# Cronjob
You will need to setup a cronjob on your system.

Mine is set to check the services every 5 minutes - */5 * * * * /opt/ssrs.sh >/dev/null 2>&1 <br/>
You can generate your own here - https://crontab-generator.org/
<br/><br/>
I do post code here on GitHub and also my own website - https://lsmithx2.uk/
