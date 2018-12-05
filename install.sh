#!/usr/bin/env sh

FOLDER=$(dirname $(realpath "$0"))
cd $FOLDER

sudo apt install -y udhcpd

sudo systemd stop udhcpd
sudo systemd disable udhcpd

sudo ln -sf $FOLDER/udhcpd.conf /etc/udhcpd.conf
sudo ln -sf $FOLDER/udhcpd /etc/default/udhcpd


