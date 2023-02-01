#!/bin/bash
phone1=3758800
phone2=3758801
mail=anon@mail.ru
dt=$(date -d "yesterday" +"%d/%m/%Y")
mkdir /home/adminotel/magiccalls/$phone1
find /var/www/html/records/files/ -type f -size +5 -mtime 0 -daystart -regex '.*3758800\.mp3' | xargs cp -t /home/adminotel/magiccalls/$phone1/
tar -zcf /home/adminotel/magiccalls/$phone1.tar /home/adminotel/magiccalls/$phone1/
mutt -s "New calls $phone1! date $dt" $mail -a $phone1.tar < /home/adminotel/magiccalls/message
rm -R /home/adminotel/magiccalls/$phone1
rm /home/adminotel/magiccalls/$phone1.tar
mkdir /home/adminotel/magiccalls/$phone2
find /var/www/html/records/files/ -type f -size +5 -mtime 0 -daystart -regex '.*3758801\.mp3' | xargs cp -t /home/adminotel/magiccalls/$phone2/
tar -zcf /home/adminotel/magiccalls/$phone2.tar /home/adminotel/magiccalls/$phone2/
mutt -s "New calls $phone2! date $dt" $mail -a $phone2.tar < /home/adminotel/magiccalls/message
rm -R /home/adminotel/magiccalls/$phone2
rm /home/adminotel/magiccalls/$phone2.tar
