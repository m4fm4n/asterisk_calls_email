#!/bin/bash
mail=anon@mail.ru
dt=$(date -d "yesterday" +"%d/%m/%Y")
mkdir /home/adminotel/magiccalls/3758800
find /var/www/html/records/files/ -type f -size +5 -mtime 0 -daystart -regex '.*3758800\.mp3' | xargs cp -t /home/adminotel/magiccalls/3758800/
tar -zcf /home/adminotel/magiccalls/3758800.tar /home/adminotel/magiccalls/3758800/
mutt -s "New calls 375-88-00! date $dt" $mail -a 3758800.tar < /home/adminotel/magiccalls/message
rm -R /home/adminotel/magiccalls/3758800
rm /home/adminotel/magiccalls/3758800.tar
mkdir /home/adminotel/magiccalls/3758801
find /var/www/html/records/files/ -type f -size +5 -mtime 0 -daystart -regex '.*3758801\.mp3' | xargs cp -t /home/adminotel/magiccalls/3758801/
tar -zcf /home/adminotel/magiccalls/3758801.tar /home/adminotel/magiccalls/3758801/
mutt -s "New calls 375-88-01! date $dt" $mail -a 3758801.tar < /home/adminotel/magiccalls/message
rm -R /home/adminotel/magiccalls/3758801
rm /home/adminotel/magiccalls/3758801.tar
