yol=`pwd`
k() {

bash $yol/core/setup/s.sh
}

s() {
rm -rf /usr/local/sbin/croe-framework
rm /usr/local/sbin/croe
rm /usr/local/sbin/croe-server
rm /usr/local/sbin/croe-setup
}

kullanim() {
echo -e "KURMAK İÇİN => \t bash croe.sh --kur"
echo -e "SİLMEK İÇİN => \t bash croe.sh --sil"
}


while [ "$1" != "" ]; do
    case $1 in
        --kur ) shift
         ked
        ;;
        --sil ) s
        ;;
        -y | --yardim ) kullanim
        exit
        ;;
        * ) kullanim
        exit 1
    esac
    shift
done
