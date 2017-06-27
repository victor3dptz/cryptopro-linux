#!/bin/bash

echo "Установка КриптоПро"
read -p "Press any key..."

if [ "$(whoami)" != 'root' ]; then
echo "Нужны права root"
exit 1;
else

if [ "`uname -i`" == "x86_64" ]; then
yum remove -y cprocsp* lsb-cprocsp* JaCarta* openct
yum install -y pcsc-lite pcsc-lite-libs pcsc-tools pcsc-perl ccid opensc pkcs11-helper PyQt4

rpm -Uvh ./files/linux-amd64/lsb-cprocsp-base-4.0.0-4.noarch.rpm
rpm -Uvh ./files/linux-amd64/lsb-cprocsp-rdr-64-4.0.0-4.x86_64.rpm
rpm -Uvh ./files/linux-amd64/lsb-cprocsp-kc1-64-4.0.0-4.x86_64.rpm
rpm -Uvh ./files/linux-amd64/lsb-cprocsp-capilite-64-4.0.0-4.x86_64.rpm
rpm -Uvh ./files/linux-amd64/lsb-cprocsp-pkcs11-64-4.0.0-4.x86_64.rpm
rpm -Uvh ./files/linux-amd64/cprocsp-rdr-pcsc-64-4.0.0-4.x86_64.rpm
rpm -Uvh ./files/linux-amd64/cprocsp-rdr-jacarta-3.6.1-3.6.407-1.x86_64.rpm
#rpm -Uvh ./files/JaCartaPRO-1.0.6-1.x86_64.rpm
rpm -Uvh ./files/JaCartaGOST-1.5.3-1.x86_64.rpm
rpm -Uvh ./files/token-manager-0.12-1.noarch.rpm
rpm -Uvh ./files/gostcryptogui-0.2-2.x86_64.rpm

# Настройка
/opt/cprocsp/sbin/amd64/cpconfig -ini '\config\parameters' -add long dynamic_readers 1
service cprocsp restart
exit 1;
else

yum remove -y cprocsp* lsb-cprocsp* JaCarta* openct
yum install -y pcsc-lite pcsc-lite-libs pcsc-tools pcsc-perl ccid opensc pkcs11-helper PyQt4

rpm -Uvh ./files/linux-ia32/lsb-cprocsp-base-4.0.0-4.noarch.rpm
rpm -Uvh ./files/linux-ia32/lsb-cprocsp-rdr-4.0.0-4.i486.rpm
rpm -Uvh ./files/linux-ia32/lsb-cprocsp-kc1-4.0.0-4.i486.rpm
rpm -Uvh ./files/linux-ia32/lsb-cprocsp-capilite-4.0.0-4.i486.rpm
rpm -Uvh ./files/linux-ia32/lsb-cprocsp-pkcs11-4.0.0-4.i486.rpm
rpm -Uvh ./files/linux-ia32/cprocsp-rdr-pcsc-4.0.0-4.i486.rpm
rpm -Uvh ./files/linux-ia32/cprocsp-rdr-jacarta-3.6.1-3.6.407-1.i386.rpm
#rpm -Uvh ./files/JaCartaPRO-1.0.6-1.i386.rpm
rpm -Uvh ./files/JaCartaGOST-1.4.0-1.i386.rpm
rpm -Uvh ./files/token-manager-0.12-1.noarch.rpm
rpm -Uvh ./files/gostcryptogui-0.2-2.i686.rpm

# Настройка
/opt/cprocsp/sbin/ia32/cpconfig -ini '\config\parameters' -add long dynamic_readers 1
service cprocsp restart

fi

fi
