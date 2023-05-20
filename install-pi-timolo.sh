#!/bin/bash

# Create Directories
echo
echo "Creating plugins, media and data directories unless they already exist"
echo
if [ ! -d "plugins" ]; then
    mkdir plugins
    cp -r ./original_config/plugins ./plugins
    echo "plugins directory created"
else
    echo "plugins directory already exists"
fi

if [ ! -f "config.py" ]; then
    cp ./original_config/config.py .
    echo "config.py file created"
else
    echo "config.py file already exists"
fi

if [ ! -d "media" ]; then
    mkdir media
    echo "media directory created"
    cp original_config/webserver/webserver.txt ./media
else
    echo "media directory already exists"
fi

if [ ! -d "data" ]; then
    mkdir data
    echo "data directory created"
else
    echo "data directory already exists"
fi

echo
echo "Please edit the config.py file to configure the application."
echo "The active copy of the plugins directory is located at ./plugins"
echo
echo "Run the application from the command line: ./pi-timolo.py"
echo "Run the application in the background: ./timolo.sh start"
echo "See the WIKI for setting up the application to run at boot"
echo
