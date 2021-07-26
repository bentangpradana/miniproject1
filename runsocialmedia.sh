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
mkdir socialmedia/var/www/html
echo "Menyiapkan installasi"
cd socialmedia/var/www/html
echo "Menyiapkan installasi"
git clone https://github.com/sdcilsy/sosial-media
echo "Database Name: "
read -e dbname
echo "Database User: "
read -e dbuser
echo "Database Password: "
read -s dbpass
echo "run install? (y/n)"
read -e run
if [ "$run" == n ] ; then
exit
echo "Menyiapkan installasi"
sudo mysql -u devopscilsy -p dbsosmed < dump.sql  
echo "Installasi Selesai"
exit 0
else
echo "Installasi dibatalkan"
exit 1
fi
