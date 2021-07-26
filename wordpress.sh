#!/bin/bash
jawaban="Y"
read -p "Apakah kamu yakin akan menginstall Wordpress ? (Y/n) " pilih;
if [ $pilih == $jawaban ];
then
echo "Menyiapkan Installasi wordpress"
systemctl enabled apache2
echo "Menyiapkan Installasi"
systemctl enabled mysql
echo "Menyiapkan Installasi"
curl -O https://wordpress.org/latest.tar.gz
echo "Menyiapkan installasi"
tar -zxvf latest.tar.gz 
echo "Installasi Selesai"
exit 0
else
echo "Installasi dibatalkan"
exit 1
fi
