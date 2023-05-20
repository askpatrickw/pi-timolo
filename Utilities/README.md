# Utilities

These utilities are unchanged from the original pi-timolo repository.

| Script | Description |
| ------ | ----------- |
| convid.sh | Convert h264 files to mp4 using MP4Box ([see Wiki](https://github.com/pageauc/pi-timolo/wiki/How-to-Convert-h264-video-to-MP4)) |
| makedailymovie.sh | Make a movie from a motion capture videos |
| makevideo.sh<br>video.conf | Make a video from a set of images ([see wiki](https://github.com/pageauc/pi-timolo/wiki/How-to-Make-a-Timelapse-Video-from-Images))<br>makevideo.sh variables are in video.conf |
| mvleavelast.sh | move files from the local SD card images folder to a remote network share mount excluding the most recent file |
| myip.sh | Get my IP address |
| remote-run.sh | Enable remote configuration from a remote storage service ([see wiki](https://github.com/pageauc/pi-timolo/wiki/How-to-Setup-config.py-Remote-Configuration#how-to-remotely-run-a-remote-runsh-bash-script))|
| watch-app.sh | Watch a directory and run a command on changes ([see wiki](https://github.com/pageauc/pi-timolo/wiki/How-to-Setup-config.py-Remote-Configuration)) |
| py3exiv2-arm/pyexiv2 folder | Samples and Utils from py3exiv2 which do not appear to be used anywhere else. |

## Modified Utilities

| Script | Description |
| ------ | ----------- |
| /image-stiching folder | Used in stitching stills into panoramic images.<br>This is a _binary_ in the original pi-timolo repo. That has been removed, but the config.cfg files is preserved. ([see wiki](https://github.com/pageauc/pi-timolo/wiki/Panoramic-Images-Stitching-Feature)) |
