#!/bin/bash
phone1=3758800
phone2=3758801
mail=anon@mail.ru
dt=$(date -d "yesterday" +"%d/%m/%Y")
mkdir /home/adminotel/magiccalls/$phone1
find /var/www/html/records/files/ -type f -size +5 -mtime 0 -daystart -regex '.*\(\/0[0-7]\|\/1[6-9][0-5][0-9][0-9][0-9]\|\/2[0-3][0-5][0-9][0-9][0-9]\).*3758800\.mp3' | xargs cp -t /home/adminotel/magiccalls/$phone1/
tar -zcf /home/adminotel/magiccalls/3758800.tar /home/adminotel/magiccalls/$phone1/
mutt -s "New calls $phone1! date $dt" $mail -a $phone1.tar < /home/adminotel/magiccalls/message
rm -R /home/adminotel/magiccalls/$phone1
rm /home/adminotel/magiccalls/$phone1.tar
mkdir /home/adminotel/magiccalls/$phone1
find /var/www/html/records/files/ -type f -size +5 -mtime 0 -daystart -regex '.*\(\/0[0-7]\|\/1[6-9][0-5][0-9][0-9][0-9]\|\/2[0-3][0-5][0-9][0-9][0-9]\).*3758801\.mp3' | xargs cp -t /home/adminotel/magiccalls/$phone2/
tar -zcf /home/adminotel/magiccalls/$phone2.tar /home/adminotel/magiccalls/$phone2/
mutt -s "New calls $phone2! date $dt" $mail -a $phone2.tar < /home/adminotel/magiccalls/message
rm -R /home/adminotel/magiccalls/$phone2
rm /home/adminotel/magiccalls/$phone2.tar
