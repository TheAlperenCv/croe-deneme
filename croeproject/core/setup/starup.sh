#!/usr/bin/bash
#YAPIMCI: ALPEREN ÇAVU
yol=`pwd`
#bilgi al


echo -e "[ + ] GEREKLİLİKLER KONTROL EDİLİYOR [ + ]"
sleep 2

#python3 kontrol et

which python3 > /dev/null 2>&1
if [[ "$?" -eq "0" ]]; then
echo -e "\e[1;93m[ PYTHON3 --> KURULUM BULUNDU ]"
else
echo -e "\e[1;31m[ PYTHON3 --> KURULUM BULUNAMADI ]"
apt-get install python3 -y
which python3 > /dev/null 2>&1
fi
sleep 2
which ruby > /dev/null 2>&1
if  [[ "$?" -eq "0" ]]; then
echo -e "\e[1;93m[ RUBY --> KURULUM BULUNDU ]"
else
echo -e "\e[1;31m[ RUBY --> KURULUM BULUNAMADI ]"
apt-get install ruby -y
which ruby > /dev/null 2>&1
sleep 2
sleep 2
fi
which apktool > /dev/null 2>&1
if [[ "$?" -eq "0" ]]; then
echo -e "\e[1;93m[ APKTOOL --> KURULUM BULUNDU ]"
else
echo -e "\e[1;31m[ APKKTOOL --> KURULUM BULUNAMADI ] "
apt-get install apktool -y
which apktool > /dev/null 2>&1
fi
sleep 2
which zipalign > /dev/null 2>&1
if [[ "$?" -eq "0" ]]; then
echo -e "\e[1;93m[ ZİPALİGN --> KURULUM BULUNDU ]"
else
echo -e "\e[1;31m[ ZİPALİGN --> KURULUM BULUNAMADI ]"
apt-get install zipalign -y
which zipalign > /dev/null 2>&1 
fi
sleep 2
which jarsigner > /dev/null 2>&1 
if [[ "$?" -eq "0" ]]; then
echo -e "\e[1;93m[ JARSİGNER --> KURULUM BULUNDU ]"
else
echo -e "\e[1;31m[ JARSİGNER --> KURULUM BULUNAMADI ]"
apt-get install default-jre -y
apt-get install default-jdk -y
which jarsigner > /dev/null 2>&1
fi
sleep 2
which msfconsole > /dev/null 2>&1
if [[ "$?" -eq "0" ]]; then
echo -e "\e[1;93m[ METASPLOİT-FRAMEWORK --> KURULUM BULUNDU ]"
else
echo -e "\e[1;31m[METASPLOİ-FRAMEWORK --> KURULUM BULUNAMADI ]"
apt-get install metasploit-framework -y
which msfconsole > /dev/null 2>&1
fi
sleep 2
which beef-xss > /dev/null 2>&1
if [[ "$?" -eq "0" ]]; then
echo -e "\e[1;93m[ BEEF-XSS --> KURULUM BULUNDU ] "
else
echo -e "\e[1;31m[ BEEF-XSS --> KURULUM BULUNAMADI ]"
apt-get install beef-xss -y
which beef-xss > /dev/null 2>&1 
fi
sleep 2
which croe > /dev/null 2>&1
if [[ "$?" -eq "0" ]]; then
echo -e "\e[1;93m[ CROE MODÜL --> KURULUM BULUNDU ]"
else
echo -e "\e[1;97m[ + ]\e[1;92m CROE ÇEVRE ETKENLERİ KURULUYOR [ + ]"
croe

