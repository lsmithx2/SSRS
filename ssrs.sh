#!/bin/bash
# Server Service Restart Script (SSRS)
# Programmed by LSmithx2 (https://lsmithx2.uk/)
# Restarts required services if they crash
# Do not modify unless you know what you are changing

# APACHE2
ps -ef | grep apache2 | grep -v grep > /dev/null
if [ $? != 0 ]
then
        /etc/init.d/apache2 start > /dev/null
        mail -s "SSRS APACHE Restart" your@email.com <<< "The apache service on the server has failed and has been restarted by SSRS!"
fi

# NGINX
ps -ef | grep nginx | grep -v grep > /dev/null
if [ $? != 0 ]
then
       /etc/init.d/nginx start > /dev/null
       mail -s "SSRS NGINX Restart" your@email.com <<< "The nginx service on the server has failed and has been restarted by SSRS!"
fi

# PHP7-FPM
ps -ef | grep php7-fpm | grep -v grep > /dev/null
if [ $? != 0 ]
then
       /etc/init.d/php7-fpm start > /dev/null
       mail -s "SSRS PHP-FPM Restart" your@email.com <<< "The php-fpm service on the server has failed and has been restarted by SSRS!"
fi

# MYSQL
ps -ef | grep mysql | grep -v grep > /dev/null
if [ $? != 0 ]
then
       /etc/init.d/mysql start > /dev/null
       mail -s "SSRS MYSQL Restart" your@email.com <<< "The mysql service on the server has failed and has been restarted by SSRS!"
fi
