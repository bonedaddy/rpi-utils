#! /bin/bash
# run as sudo
# enable time synchronization
timedatectl set-ntp true
cat << EOF >> "/etc/systemd/timesyncd.conf"
[Time]
FallbackNTP=0.us.pool.ntp.org 1.us.pool.ntp.org
EOF
sudo apt install ntpdate
sudo service ntp stop
sudo ntpdate 0.us.pool.ntp.org
sudo service ntp start
