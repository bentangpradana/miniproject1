#!/bin/bash
jawaban="Y"
read -p "Apakah kamu yakin akan menginstall webserver ? (Y/n) " pilih;
if [ $pilih == $jawaban ];
then
echo "Menyiapkan Installasi Web server"
sudo apt-get update
echo "Melakukan Installasi Webserver"
sudo apt-get install -y apache2  
echo "Installasi Selesai"
exit 0
else
echo "Installasi dibatalkan"
exit 1
fi


installunzip () {

read -p "Apakah kamu yakin akan menginstall unzip ? (Y/n) " pilih;
if [ $pilih == "Y" ];
then
echo "Melakukan Installasi"
sudo apt-get install -y unzip
echo "Installasi Selesai"
exit 0
else
echo "Installasi dibatalkan"
exit 1
fi

}

installapache2 &
installunzip
