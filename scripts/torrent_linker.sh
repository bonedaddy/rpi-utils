#! /bin/bash
MOVIE_DIR="/ext-hdd/movies"
for dir in */; do
	if [[ $(echo "$dir" | grep -ci tv-shows) -ge 1 ]]; then
		echo "found tv dir" > /dev/null
	else
		echo ${dir::-1}
		ln -s "/ext-hdd/torrents/${dir::-1}" "$MOVIE_DIR/${dir::-1}"
	fi
done
