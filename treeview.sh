#!/bin/sh
# i know this is the most horrible, unefficient, unsecure und !(best practice) way to produce the tree view, but who cares, works for me ;-)
cd /etc/can2mqtt/
for i in $(cat can2mqtt.csv|cut -d ',' -f 3)
do
	mkdir -p tmp/$i
done
cd tmp
tree 
cd ..
rm -rf tmp/
