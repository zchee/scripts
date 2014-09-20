#!/bin/sh

yum update
yum install -y rubygem-io-console

yum install -y zsh
cat /etc/shells >> /bin/zsh
chsh -s /bin/zsh

gem install homesick
gem install io-console

homesick clone https://github.com/fainder/dotfiles-aws.git
homesick symlink -f

zsh
