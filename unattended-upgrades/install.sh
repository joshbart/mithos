#!/usr/bin/env bash

# Install the package
apt-get update
apt-get -y install unattended-upgrades

# I have the proper settings for unattended-upgrades configured already, so I have to copy them over and change the permissions appropriately.
cp -f /vagrant/unattended-upgrades/50unattended-upgrades /etc/apt/apt.conf.d
chown -f root:root /etc/apt/apt.conf.d/50unattended-upgrades
chmod -f 644 /etc/apt/apt.conf.d/50unattended-upgrades

# Same idea as before, but with auto-upgrades
cp -f /vagrant/unattended-upgrades/20auto-upgrades /etc/apt/apt.conf.d
chown -f root:root /etc/apt/apt.conf.d/20auto-upgrades
chmod -f 644 /etc/apt/apt.conf.d/20auto-upgrades