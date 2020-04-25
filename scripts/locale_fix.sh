#! /bin/bash

echo "export LANGUAGE=en_US.UTF-8" >> $HOME/.bashrc
echo "export LANG=en_US.UTF-8" >> $HOME/.bashrc
echo "export LC_ALL=en_US.UTF-8" >> $HOME/.bashrc
sudo locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales
