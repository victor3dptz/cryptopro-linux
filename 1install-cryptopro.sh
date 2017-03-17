#!/bin/bash

echo "Установка КриптоПро"
read -p "Press any key..."

if [ "$(whoami)" != 'root' ]; then
echo "Нужны права root"
#exit 1;
else

if test -f /opt/cprocsp/bin/amd64/csptest; then
echo Криптопро установлен
else

# CentOS
if test -f /bin/rpm; then
echo "CentOS"

yum install -y rosa-lsb rosa-lsb-compat rosa-lsb-core rosa-lsb-graphics
yum install -y pcsc-lite pcsc-lite-libs pcsc-tools pcsc-perl ccid opensc pkcs11-helper
#sudo ./files/linux-amd64/install.sh
rpm -Uvh ./files/linux-amd64/lsb-cprocsp-base-3.9.0-4.noarch.rpm
rpm -Uvh ./files/linux-amd64/lsb-cprocsp-rdr-64-3.9.0-4.x86_64.rpm
rpm -Uvh ./files/linux-amd64/lsb-cprocsp-kc1-64-3.9.0-4.x86_64.rpm
rpm -Uvh ./files/linux-amd64/lsb-cprocsp-capilite-64-3.9.0-4.x86_64.rpm
rpm -Uvh ./files/linux-amd64/lsb-cprocsp-pkcs11-64-3.9.0-4.x86_64.rpm
rpm -Uvh ./files/linux-amd64/cprocsp-rdr-pcsc-64-3.9.0-4.x86_64.rpm
rpm -Uvh ./files/linux-amd64/cprocsp-rdr-jacarta-3.6.1-3.6.346-1.x86_64.rpm
yum remove -y openct 
rpm -Uvh ./files/jc-proclient/64/JaCartaPRO-1.0.6-1.x86_64.rpm
rpm -Uvh ./files/JaCartaGOST-1.4.0-1.x86_64.rpm
rpm -Uvh ./files/token-manager-0.11-1.noarch.rpm
rpm -Uvh ./files/gostcryptogui-0.2-1.x86_64.rpm

# Настройка
/opt/cprocsp/sbin/amd64/cpconfig -ini '\config\parameters' -add long dynamic_readers 1
service cprocsp restart

fi
# debian
if test -f /usr/bin/apt; then
echo "Debian"

sudo apt-get -y install lsb-base alien lsb-core
sudo apt-get -y install pcscd
sudo apt-get -f install

#sudo ./files/linux-amd64/install.sh
alien -kci ./files/linux-amd64/lsb-cprocsp-base-3.9.0-4.noarch.rpm
alien -kci ./files/linux-amd64/lsb-cprocsp-rdr-64-3.9.0-4.x86_64.rpm
alien -kci ./files/linux-amd64/lsb-cprocsp-kc1-64-3.9.0-4.x86_64.rpm
alien -kci ./files/linux-amd64/lsb-cprocsp-capilite-64-3.9.0-4.x86_64.rpm
alien -kci ./files/linux-amd64/lsb-cprocsp-pkcs11-64-3.9.0-4.x86_64.rpm
alien -kci ./files/linux-amd64/cprocsp-rdr-pcsc-64-3.9.0-4.x86_64.rpm
alien -kci ./files/linux-amd64/cprocsp-rdr-jacarta-3.6.1-3.6.346-1.x86_64.rpm
alien -kci ./files/jc-proclient/64/JaCartaPRO-1.0.6-1.x86_64.rpm
alien -kci ./files/JaCartaGOST-1.4.0-1.x86_64.rpm
# Настройка
/opt/cprocsp/sbin/amd64/cpconfig -ini '\config\parameters' -add long dynamic_readers 1
service cprocsp restart

sudo dpkg -i ./files/IFCPlugin-x86_64.deb

fi

fi

fi
