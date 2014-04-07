#! /bin/bash
yum -y install nfs-*
echo "RQUOTAD_PORT=875
      LOCKD_TCPPORT=32803
      LOCKD_UDPPORT=32769
      MOUNTD_PORT=892
      STATD_PORT=662" >> /etc/sysconfig/nfs
service rpcbind start
service nfslock start
service nfs start
chkconfig --level 35 nfs on
iptables -I INPUT -m state --state NEW -p tcp \
    -m multiport --dport 111,892,2049,32803 -s $1 -j ACCEPT
 
iptables -I INPUT -m state --state NEW -p udp \
    -m multiport --dport 111,892,2049,32769 -s $1 -j ACCEPT