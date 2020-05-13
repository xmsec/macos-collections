#!/bin/sh
# install docker
sudo yum update -y -q
sudo yum install docker python3-pip -y -q
sudo pip3 install docker-compose

# enable bbr
sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
sudo rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm
sudo yum --enablerepo=elrepo-kernel install kernel-ml -y
rpm -qa | grep kernel
sudo egrep ^menuentry /etc/grub2.cfg | cut -f 2 -d \'
sudo grub2-set-default 0

# apt install linux-image-generic-hwe-16.04  # ubuntu16.04
#sudo shutdown -r now


#echo 'net.core.default_qdisc=fq' | sudo tee -a /etc/sysctl.conf
#echo 'net.ipv4.tcp_congestion_control=bbr' | sudo tee -a /etc/sysctl.conf
#sudo sysctl -p

#sudo sysctl net.ipv4.tcp_available_congestion_control
