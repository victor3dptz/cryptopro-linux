#!/bin/bash

echo "Сертификаты должны лежать в папке cert, ключи в папке keys"
echo
read -p "Press any key..."
echo
# Корневой
cd ./cert
echo "Доступные сертификаты:"
PS3="Выберите корневой сертификат для установки: "
select file in "--Skip--" "$1"`pwd`/*
do
##/opt/cprocsp/bin/amd64/certmgr -inst -store uRoot -file $file
    if [ "$file" = "--Skip--" ]
	then
	    break
    fi
    if [ -n "$file" ]; then
	/opt/cprocsp/bin/amd64/certmgr -inst -store uRoot -file "$file"
	break
    else echo "Error"
    fi
done
echo 
cd ../keys
echo "Установка закрытого ключа"
PS3="Выберите закрытый ключ для установки: "
select file in "--Skip--" "$1"`pwd`/*
do
    if [ "$file" = "--Skip--" ]
	then
	    break
    fi
    if [ -d "$file" ]; then
	cp -r "$file" /var/opt/cprocsp/keys/`whoami`
	echo "Ключ $file установлен"
	break
    else echo "Error"
    fi
done

#/opt/cprocsp/bin/amd64/csptest -keyset -newkeyset -cont '\\.\HDIMAGE\cert3'
echo 
echo "Список хранилищ КриптоПро: "
/opt/cprocsp/bin/amd64/csptest -keyset -enum_cont -fqcn -verifyc | iconv -f windows-1251
read -p "Press any key..."

cd ../cert
echo
echo "Установка сертификата пользователя"
PS3="Выберите сертификат пользователя: "
select file in "--Skip--" "$1"`pwd`/*
do
    if [ "$file" = "--Skip--" ]
	then
	    break
    fi
    if [ -n "$file" ]; then
	echo $file
	/opt/cprocsp/bin/amd64/certmgr -inst -store uMy -file "$file" -ask-cont
	break
    else echo "Error"
    fi
done

# Установка сертификата с джакарты
#  /opt/cprocsp/bin/amd64/certmgr -inst -cont '\\.\ARDS JaCarta [Main Interface] 00 00\rnd-7-B542-AA23-47B4-A710-BF39-6547-DEB1'
echo
echo "Установка сертификата с джакарты"
read -p "Вставить и нажать любую клавишу... Ctrl+C для выхода"
/opt/cprocsp/bin/amd64/csptest -inst -cons '`/opt/cprocsp/bin/amd64/csptest -keyset -enum_cont -fqcn -verifyc|grep JaCarta`'

echo 
echo "Список всех сертификатов"
/opt/cprocsp/bin/amd64/certmgr -list
