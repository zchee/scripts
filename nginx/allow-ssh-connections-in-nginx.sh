#!/bin/sh
#
# Setting to bash login shell of the nginx user.
sudo /usr/sbin/usermod -s /bin/bash nginx
# Change nginx user password.
sudo passwd nginx
# nginx user process stop.
sudo /sbin/service monit stop
sudo /sbin/service nginx stop
sudo /sbin/service php-fpm stop
# Change nginx user home directory
sudo /usr/sbin/usermod -d /var/www/vhosts nginx
# nginx user process restart.
sudo /sbin/service php-fpm start
sudo /sbin/service nginx start
sudo /sbin/service monit start
# authorized_keys copy in nginx user .ssh directory
sudo mkdir /var/www/vhosts/.ssh
sudo cp /home/ec2-user/.ssh/authorized_keys /var/www/vhosts/.ssh/
sudo chown -R nginx:nginx /var/www/vhosts/.ssh/

