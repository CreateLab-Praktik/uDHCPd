#!/usr/bin/env sh

FOLDER=$(dirname $(realpath "$0"))
cd $FOLDER

dpkg -s udhcpd || { \
	sudo apt install -y udhcpd && \
	sudo systemctl stop udhcpd; \
	sudo systemctl disable udhcpd; }

sudo ln -sfn $FOLDER/udhcpd.conf /etc/udhcpd.conf
sudo ln -sfn $FOLDER/udhcpd /etc/default/udhcpd


