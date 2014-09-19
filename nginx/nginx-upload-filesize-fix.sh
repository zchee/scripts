#!/bin/sh
sed -i 's/client_max_body_size    4M;/client_max_body_size    32M;/' /etc/nginx/nginx.conf
service nginx restart
sed -i 's/4M/32M/' /etc/php-fpm.d/www.conf
service php-fpm restart
