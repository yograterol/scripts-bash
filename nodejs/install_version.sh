#! /bin/bash
cd /tmp
wget http://nodejs.org/dist/v$1/node-v$1.tar.gz
tar xxvfz node-v$1.tar.gz
mv /tmp/node-v$1 /opt/
cd /opt/node-v$1
./configure && make && make install
