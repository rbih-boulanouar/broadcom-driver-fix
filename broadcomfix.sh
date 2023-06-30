#!/usr/bin/env bash
sudo apt update
sudo apt install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms
#   http://ftp.us.debian.org/debian/pool/non-free/b/broadcom-sta/broadcom-sta-dkms_6.30.223.271-10_all.deb
sudo modprobe -r b44 b43 b43legacy ssb brcmsmac bcma
sudo modprobe wl

