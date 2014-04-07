#! /bin/bash
yum update -y
yum install wget -y
wget http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm -O /tmp/epel.rpm
yum localinstall /tmp/epel.rpm -y
rm -rf /tmp/epel.rpm