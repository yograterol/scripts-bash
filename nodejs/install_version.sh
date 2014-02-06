#! /bin/bash
version_nodejs = 0.8.18
cd /tmp
wget http://nodejs.org/dist/v$version_nodejs/node-v$version_nodejs.tar.gz
tar xxvfz node-v$version_nodejs.tar.gz
mv /tmp/node-v$version_nodejs /opt/
cd /opt/node-v$version_nodejs
./configure && make && make install
