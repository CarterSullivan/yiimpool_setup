#!/usr/bin/env bash


#########################################################
# Source https://mailinabox.email/ https://github.com/mail-in-a-box/mailinabox
# Updated by Afiniel for crypto use...
# This script is intended to be ran from the yiimpool installer
#########################################################

if [ -z "${TAG}" ]; then
	TAG=v1.52
fi

# Clone the yiimpool repository if it doesn't exist.
if [ ! -d $HOME/yiimpool/yiimp_multi ]; then
	echo Downloading yiimpool YiiMP Installer ${TAG}. . .
	git clone \
		-b ${TAG} --depth 1 \
		https://github.com/afiniel/yiimpool_yiimp_multi \
		$HOME/yiimpool/yiimp_multi \
		< /dev/null 2> /dev/null

	echo
fi

# Change directory to it.
cd $HOME/yiimpool/yiimp_multi

# Update it.
sudo chown -R $USER $HOME/yiimpool/install/.git/
if [ "${TAG}" != `git describe --tags` ]; then
	echo Updating yiimpool YiiMP Multi Server Installer to ${TAG} . . .
	git fetch --depth 1 --force --prune origin tag ${TAG}
	if ! git checkout -q ${TAG}; then
		echo "Update failed. Did you modify something in `pwd`?"
		exit
	fi
	echo
fi

# Start setup script.
cd $HOME/yiimpool/yiimp_multi
source start.sh
