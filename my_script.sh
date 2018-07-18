#!/bin/bash

set -x

sudo apt-get update
sudo apt-get upgrade
cd
cd libmnl
git pull
git fetch origin
git reset --hard origin/master
sudo ./autogen.sh
sudo ./configure
sudo make
sudo make install

sudo apt-get update
sudo apt-get upgrade
cd
cd libnftnl
git pull
git fetch origin
git reset --hard origin/master
sudo ./autogen.sh
sudo ./configure
sudo make
sudo make install

sudo apt-get update
sudo apt-get upgrade
cd
cd nftables
git pull
git fetch origin
git reset --hard origin/master
sudo ./autogen.sh
sudo ./configure
sudo make
sudo make install

sudo apt-get update
sudo apt-get upgrade
cd
cd iptables
git pull
git fetch origin
git reset --hard origin/master
sudo ./autogen.sh
sudo ./configure
sudo make
sudo make install

sudo apt-get update
sudo apt-get upgrade
