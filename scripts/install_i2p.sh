#! /bin/bash

# installs I2P for raspberry pi's
# this is onyl applicable to debian buster based distributions

APT_FILE="/etc/apt/sources.list.d/raspi.list"
echo "deb https://deb.i2p2.de/ buster main" | sudo tee --append "$APT_FILE"
echo "deb-src https://deb.i2p2.de/ buster main" | sudo tee --append "$APT_FILE"
curl -o i2p-debian-repo.key.asc https://geti2p.net/_static/i2p-debian-repo.key.asc
gpg -n --import --import-options import-show i2p-debian-repo.key.asc
sudo apt-key add i2p-debian-repo.key.asc
sudo apt-get update
sudo apt-get install i2p i2p-keyring
