#!/bin/bash

echo "安裝Deluge-$1 ..."
echo ""
sleep 1

apt-get update
apt-get install -y python python-twisted python-openssl python-setuptools intltool python-xdg python-chardet geoip-database python-libtorrent python-notify python-pygame python-glade2 librsvg2-common xdg-utils python-mako
wget http://download.deluge-torrent.org/source/deluge-$1.tar.gz
tar xf deluge-$1.tar.gz
cd deluge-$1
python setup.py build
python setup.py install --install-layout=deb
cd ~
deluged
deluge-web -f
echo "安裝完成"
