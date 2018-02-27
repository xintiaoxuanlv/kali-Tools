apt-get install git
apt-get build-dep python-lxml
cd /root
git clone https://github.com/andresriancho/w3af.git 
cd w3af/
./w3af_console
cd /tmp/
wget 'https://www.openssl.org/source/openssl-1.1.1-pre1.tar.gz'
gzip -cd openssl-1.1.1-pre1.tar.gz | tar xvf -
cd openssl-1.1.1-pre1/
./config
make clean
make
make install
strip /usr/local/bin/openssl
cd /usr/local/lib
ln -sf libcrypto.so.1.1.1 libcrypto.so.0
ln -sf libcrypto.so.1.1.1 libcrypto.so
ln -sf libssl.so.1.1.1 libssl.so.0
ln -sf libssl.so.1.1.1 libssl.so
cp -f '/home/SSL for W3AF.py' /usr/local/lib/python2.7/dist-packages/OpenSSL/
pip install crypto xdot
apt-get -y install python-gtksourceview2 graphviz
cd /tmp/
./w3af_dependency_install.sh
cd /root
#################
wget http://ftp.br.debian.org/debian/pool/main/p/pywebkitgtk/python-webkit_1.1.8-3_amd64.deb 
wget http://ftp.br.debian.org/debian/pool/main/w/webkitgtk/libjavascriptcoregtk-1.0-0_2.4.11-3_amd64.deb
wget http://ftp.br.debian.org/debian/pool/main/p/python-support/python-support_1.0.15_all.deb 
wget http://ftp.br.debian.org/debian/pool/main/w/webkitgtk/libwebkitgtk-1.0-0_2.4.11-3_amd64.deb 
#################
apt-get install gdebi
dpkg -i libjavascriptcoregtk-1.0-0_2.4.11-3_amd64.deb
dpkg -i python-support_1.0.15_all.deb
dpkg -i libwebkitgtk-1.0-0_2.4.11-3_amd64.deb
gdebi -i python-webkit_1.1.8-3_amd64.deb 
################
cd w3af/
ln -s '/root/w3af/w3af_console' /bin/w3af
ln -s '/root/w3af/w3af_gui' /bin/w3af_gui
./w3af_console

echo BY-{“text”："josn"}
echo 感谢您的使用，如有问题联系QQ：1945649519
echo 已经自动将W3AF加入系统变量中，在终端输入w3af/w3af_gui，即可开启w3af


