#!/bin/sh
echo 'mlocate install...'
yum -y install mlocate
echo 'update mlocate database...'
updatedb
