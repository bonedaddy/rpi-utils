#! /bin/bash

# installs tooling useful on all rpi's

echo "[INFO] installing vnstat, sysstat, and dnsutils"
sudo apt install vnstat sysstat dnsutils -y

echo "[INFO] performing system update"
sudo apt update -y && sudo apt upgrade -y

echo "[INFO] installing netdata, this may take awhile and is an interactive install"
bash <(curl -Ss https://my-netdata.io/kickstart.sh)