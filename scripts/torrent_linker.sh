#! /bin/bash

# used to symlink torrents into my movies directory so I can keep seeding them
# place into torrents directory and run

TORRENT_DIR="/ext-hdd/torrents"
MOVIE_DIR="/ext-hdd/movies"

for dir in */; do
	echo ${dir::-1}
	ln -s "$TORRENT_DIR/${dir::-1}" "$MOVIE_DIR/${dir::-1}"
done
