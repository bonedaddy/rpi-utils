#! /bin/bash
TV_DIR="/ext-hdd/tv-shows"
for dir in */; do
	echo ${dir::-1}
# 	ln -s "/ext-hdd/torrents/tv-shows/${dir::-1}" "$TV_DIR/${dir::-1}"
done
