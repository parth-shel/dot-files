#!/bin/bash

echo "performing system update."
echo ""
echo "updating repo..."
echo ""
apt-get update
echo ""
echo "upgrading packages..."
echo ""
apt-get upgrade
echo ""
echo "performing distro upgrade..."
echo ""
apt-get dist-upgrade
echo ""
echo "cleaning up..."
echo ""
apt-get autoremove
