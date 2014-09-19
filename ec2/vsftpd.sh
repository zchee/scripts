#!/bin/sh
echo 'vsftpd install...'
yum -y install vsftpd
echo "What is your instance Public IP ?"
read ip
sed -i 's/anonymous_enable=YES/anonymous_enable=NO/' /etc/vsftpd/vsftpd.conf
sed -i 's/dirmessage_enable=YES/dirmessage_enable=NO/' /etc/vsftpd/vsftpd.conf
sed -i 's/#ascii_upload_enable=YES/ascii_upload_enable=YES/' /etc/vsftpd/vsftpd.conf
sed -i 's/#ascii_download_enable=YES/ascii_download_enable=YES/' /etc/vsftpd/vsftpd.conf
sed -i 's/#chroot_local_user=YES/chroot_local_user=YES/' /etc/vsftpd/vsftpd.conf
sed -i 's/#chroot_list_enable=YES/chroot_list_enable=YES/' /etc/vsftpd/vsftpd.conf
sed -i 's/tcp_wrappers=YES/tcp_wrappers=NO/' /etc/vsftpd/vsftpd.conf
sed -i 's/connect_from_port_20=YES/connect_from_port_20=NO/' /etc/vsftpd/vsftpd.conf
sed -i 's/xferlog_std_format=YES/xferlog_std_format=NO/' /etc/vsftpd/vsftpd.conf
echo "pasv_enable=YES" >> /etc/vsftpd/vsftpd.conf
echo "pasv_addr_resolve=YES" >> /etc/vsftpd/vsftpd.conf
echo "pasv_address=$ip" >> /etc/vsftpd/vsftpd.conf
echo "pasv_min_port=60001" >> /etc/vsftpd/vsftpd.conf
echo "pasv_max_port=60010" >> /etc/vsftpd/vsftpd.conf
echo "use_localtime=YES" >> /etc/vsftpd/vsftpd.conf
echo "force_dot_files=YES" >> /etc/vsftpd/vsftpd.conf
passwd nginx
echo -n > /etc/vsftpd/chroot_list
echo "nginx" >> /etc/vsftpd/chroot_list
service vsftpd start
chkconfig vsftpd on
