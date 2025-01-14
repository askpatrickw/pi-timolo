#!/bin/bash
echo
echo "Installing pi-timolo Dependencies Wait ..."
echo
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

echo
echo "resizing swap file to 1024"
echo
sudo dphys-swapfile swapoff
sudo sed -i 's/CONF_SWAPSIZE=100/CONF_SWAPSIZE=1024/g' /etc/dphys-swapfile
sudo dphys-swapfile setup
sudo dphys-swapfile swapon

echo
echo "Installing py3exiv2 dependencies"
echo
sudo apt-get install -y python-all-dev
sudo apt-get install -y libexiv2-dev
sudo apt-get install -y libboost-python-dev
sudo apt-get install -y g++
git clone https://github.com/mcmclx/py3exiv2.git "$HOME/py3exiv2"
cd "$HOME/py3exiv2"|| {
    echo "Failure to CD to $HOME/py3exiv2"
    exit 1
}
echo
echo "Building py3exiv2 ... THIS WILL TAKE A WHILE."
echo
python3 configure.py
./build.sh
sudo ./build.sh -i


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


echo "INFO  : Done Dependencies Install"
echo "Run sudo raspi-config and enable the camera and I2C before using pi-timolo"
