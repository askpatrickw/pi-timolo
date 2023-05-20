# PI-TIMOLO (PI-TImelapse, MOtion detect, LOw light)

>This repo is a fork of the excellent work by Claude Pageau.

>The original repo can be found here: https://github.com/pageauc/pi-timolo/
The original README can be found in this the DOCS folder as [Original_README.md](docs/Original_README.md)

## Quickstart
1. Clone or download this repo to your Raspberry Pi in $HOME/pi-timolo
1. Run the install dependencies script: `./install-depenencies.sh`
1. Run the install pi-timolo script: `./install-pi-timolo.sh`
1. Run Pi-Timolo: `./pi-timolo.sh`

## Configuration & Plugins
Pi-Timolo is configured by editing the `config.py` file.  This file is well documented
and should be easy to follow.  The default configuration is for a Raspberry Pi Camera
Module v2.  If you are using a different camera, you will need to change the camera
settings in the config file.

Each of the plugins, covers a specific use case. The plugins are configuration
overrides. They settings in the plugin superseed those in config.py.

The Config and the Plugins are well documented in the original Wiki:
[Customize Configuration](https://github.com/pageauc/pi-timolo/wiki/Customize-Configuration)

## What is broken?
The PanTiltHead functionality requires some libraries I've not spent
time figuring out yet. I don't have that hardware, I may never work on it.

The Rclone functionality is not installed by default like it was in the original
repo. I will likely work on this at some point as it wil be useful in my setup.

## Repo Layout

| File or Folder | Description |
| ---- | ----------- |
| pi-timolo.py | The main program |
| pi-timolo.sh | A helper script to run pi-timolo.py in the background |
| user_motion_code.py | A file where you can add your own code to be run when motion is detected |
| webserver.py | A basic webserver to browse the pics and vids in the media folder. |
| webserver.sh | A helper script to run webserver.py in the background  |
| original_config.py | The original config files are stored here so you always have them.<br>They are copied to where they are needed by ./install-pi-timolo.sh|
| utilities | A folder containing utility scripts |
| docs | A folder containing oringal README. |
| pantilthat | A folder containing the pantilthat functionality **BROKEN**|
| rclone | A folder containing the rclone functionality **BROKEN**|

## Why the Fork?

1. The original repo installed dependencies for Python2 and older Raspbian OS versions.
1. The original repo has old versions of itself and folders which are not needed.
1. The original repo had several binary files which were being downloaded
and installed.
1. The original repo was not organized in a way I found easy to undersrtand.
1. The original repo had a lot of complicated installation and scripts which
I found unnecessary.
