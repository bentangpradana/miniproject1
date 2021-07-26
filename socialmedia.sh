#!/bin/bash
jawaban="Y"
read -p "Apakah kamu yakin akan menginstall socialmedia ? (Y/n) " pilih;
if [ $pilih == $jawaban ];
then
echo "Menyiapkan Installasi"
systemctl enabled apache2
echo "Menyiapkan Installasi"
systemctl enabled mysql
echo "Menyiapkan Installasi"
git clone https://github.com/sdcilsy/sosial-media
echo "Menyiapkan installasi"
sudo mysql -u devopscilsy -p dbsosmed < dump.sql  
echo "Installasi Selesai"
exit 0
else
echo "Installasi dibatalkan"
exit 1
fi
