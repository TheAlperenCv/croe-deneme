#!/usr/bin/bash
#KOD ALPEREN ÇAVUŞ
isletim=`cat /etc/issue.net`
kullanici=`whoami`
yol=`pwd`
if [[ $kullanici != "root" ]]; then
echo -e "\e[1;31m ROOT YETKİSİ GEREKİYOR"
exit
elif [[ $kullanici == "0u_a25" ]]; then
echo -e "\e[1;31mBU ARAÇ TERMUX İÇİN GEÇERLİ DEĞİLDİR"
echo -e "\e[1;31m YAKINDA....."
sleep 2
exit
else
echo -e "\e[1;97m[ KULLANICI --> \e[1;96m$kullanici "
echo -e "\e[1;97mSİSTEM --> \e[1;96m$isletim "
bash $yol/core/setup/setup.sh
fi
