#!/bin/bash
# Server Service Restart Script (SSRS)
# Programmed by LSmithx2
# Restarts required services if they crash
# Do not modify unless you know what you are changing

# APACHE2
ps -ef | grep apache2 | grep -v grep > /dev/null
if [ $? != 0 ]
then
        /etc/init.d/apache2 start > /dev/null
fi

# NGINX
ps -ef | grep nginx | grep -v grep > /dev/null
if [ $? != 0 ]
then
       /etc/init.d/nginx start > /dev/null
fi

# PHP7-FPM
ps -ef | grep php7-fpm | grep -v grep > /dev/null
if [ $? != 0 ]
then
       /etc/init.d/php7-fpm start > /dev/null
fi

# MYSQL
ps -ef | grep mysql | grep -v grep > /dev/null
if [ $? != 0 ]
then
       /etc/init.d/mysql start > /dev/null
fi
