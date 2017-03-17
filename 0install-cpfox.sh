#!/bin/bash

echo "Установка КриптоФокс"
read -p "Press any key..."

if [ "$(whoami)" != 'root' ]; then
echo "Нужны права root"
exit 1;
else

if test -f /opt/cpfox/cpfox-bin; then
echo CPfox установлен
else
cp ./files/cpfox-45.1.2.en-US.linux-x86_64.tar.bz2 /opt
tar xvjf /opt/cpfox-45.1.2.en-US.linux-x86_64.tar.bz2
rm /opt/cpfox-45.1.2.en-US.linux-x86_64.tar.bz2
cp -r ./cpfox /opt
rm -rf ./cpfox
#ln -s /opt/cpfox/cpfox-bin "/home/user/Рабочий стол/cpfox"
#Добавляем иконку для запуска
sudo bash -c 'cat << EOF > /usr/share/applications/Crypto-Fox.desktop
[Desktop Entry]
Encoding=UTF-8
Exec=/opt/cpfox/cpfox-bin
Icon=firefox
Type=Application
Terminal=false
Comment=CryptoFox Web Browser
Name=CryptoFox
GenericName=CryptoFox
StartupNotify=false
Categories=Network;WebBrowser;
EOF'
fi

fi