#!/bin/bash

echo "INFO  : $STATUS Install pi-timolo Dependencies Wait ..."

sudo apt-get update -yq
sudo apt-get install -yq ffmpeg
sudo apt-get install -yq gpac      # required for MP4Box video converter
sudo apt-get install -yq python3-dateutil
sudo apt-get install -yq python3-opencv
sudo apt-get install -yq python3-pantilthat
sudo apt-get install -yq python3-picamera
sudo apt-get install -yq python3-pil
sudo apt-get install -yq python3-pip
sudo apt-get install -yq python-pyexiv2
sudo apt-get install -yq python3-rpi.gpio

sudo pip3 install py3exiv2

# Don't worry about old versions (pre-buster) of Raspbian
# TODO: Delete these lines if they are not needed
# Or Python2 versions of libraries
# sudo apt-get install -yq dos2unix
# sudo apt-get install -yq libav-tools        # backward compatible, replaced by ffmpeg in Buster
# sudo apt-get install -yq pandoc             # convert markdown to plain text for Readme.md
# sudo apt-get install -yq fonts-freefont-ttf # Required for Jessie Lite Only
# sudo apt-get install -yq python-picamera
# sudo apt-get install -yq python-pil
# sudo apt-get install -yq python-imaging # depricated in Buster
# sudo apt-get install -yq python-opencv
# sudo apt-get install -yq python-pip
# sudo apt-get install -yq python-dateutil
# sudo apt-get install -yq python-pantilthat
# sudo apt-get install -yq python-rpi.gpio


echo "INFO  : $STATUS Done Dependencies Install"