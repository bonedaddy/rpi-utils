#! /bin/bash
wget https://downloads.getmonero.org/cli/monero-linux-armv7-v0.16.0.0.tar.bz2
bunzip2 monero-linux-armv7-v0.16.0.0.tar.bz2
tar xvf monero-linux-armv7-v0.16.0.0.tar
rm monero-linux-armv7-v0.16.0.0.tar
mv monero-arm-linux-gnueabihf-v0.16.0.0/monerod .
rm -rf monero-arm-linux-gnueabihf-v0.16.0.0
