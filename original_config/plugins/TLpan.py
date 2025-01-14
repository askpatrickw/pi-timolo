"""
pluginName = TLpan

IMPORTANT set config.py PANTILT_IS_PIMORONI for your default pantilt hardware
it is not included in this plugin to avoid conflicts

Senario Panning Timelapse Project
-------------------------------
This will require a working Pimoroni, Waveshare or Compatible Pan Tilt Hat Hardware.
This setup will save images in number sequence in case date/time is not maintained
due to a reboot and no internet NTP server is available.  It will create subfolders.
Depending on the full duration of the timelapse sequence it is advised saving files to
an attached hard drive or USB memory stick.

Edit the settings below to suit your project needs.
if config.py variable pluginEnable=True and pluginName=TLpan
then these settings will override the config.py settings.

"""

# Customize settings below to suit your project needs
# ---------------------------------------------------

IMAGE_NAME_PREFIX = "tl-"  # Default= 'cam1-' for all image file names. Eg garage-
IMAGE_WIDTH = 1920  # Default= 1024 Full Size Image Width in px
IMAGE_HEIGHT = 1080  # Default= 768  Full Size Image Height in px
IMAGE_FORMAT = ".jpg"  # Default= ".jpg"  image Formats .jpeg .png .gif .bmp
IMAGE_JPG_QUAL = (
    95  # Default= 95 jpg Encoder Quality Values 1(low)-100(high min compression) 0=85
)

TIMELAPSE_ON = True  # Default= False True=Turn timelapse On, False=Off
TIMELAPSE_PREFIX = (
    "pan-"  # Default= "tl-" Prefix for All timelapse images with this prefix
)
TIMELAPSE_TIMER_SEC = 10  # Default= 120 (2 min) Seconds between timelapse images.
TIMELAPSE_DIR = "media/pantl"  # Default= "media/timelapse"  Storage Folder Path for Time Lapse Image Storage
TIMELAPSE_RECENT_DIR = "media/recent/pantl"  # Default= "media/recent/timelapse"  location of timelapseRecent files
TIMELAPSE_RECENT_MAX = 100  # Default= 0 off or specify number of most recent files to save in TIMELAPSE_RECENT_DIR
TIMELAPSE_NUM_ON = (
    True  # Default= True filenames Sequenced by Number False=filenames by date/time
)
TIMELAPSE_NUM_RECYCLE_ON = False  # Default= True Restart Numbering at NumStart  False= Surpress Timelapse at NumMax
TIMELAPSE_NUM_START = 10000  # Default= 1000 Start of timelapse number sequence
TIMELAPSE_NUM_MAX = (
    0  # Default= 2000 Max number of timelapse images desired. 0=Continuous
)
TIMELAPSE_EXIT_SEC = (
    0  # Default= 0 seconds Surpress Timelapse after specified Seconds  0=Continuous
)
TIMELAPSE_MAX_FILES = 0  # Default= 0 off or specify MaxFiles to maintain then oldest are deleted  Default=0 (off)
TIMELAPSE_SUBDIR_MAX_FILES = 2000  # Default= 0 off or specify MaxFiles - Creates New dated sub-folder if MaxFiles exceeded
TIMELAPSE_SUBDIR_MAX_HOURS = 0  # Default= 0 off or specify MaxHours - Creates New dated sub-folder if MaxHours exceeded

PANTILT_ON = True  # True= Enable Pan Tilt Hat hardware,  False= Disable for TIMELAPSE_PANTILT_ON and PANO_ON
PANTILT_HOME = (
    0,
    -10,
)  # Default= (0, -10) Pan Tilt Home Postion. Values between -90 and + 90

TIMELAPSE_PANTILT_ON = (
    True  # True= Move pantilt to next TIMELAPSE_PANTILT_STOPS position for
)
# Modify stop locations to suit your needs.
TIMELAPSE_PANTILT_STOPS = [
    (90, -10),
    (45, -10),
    (0, -10),
    (-45, -10),
    (-90, -10),
    (-45, -10),
    (0, -10),
    (45, -10),
]

# Turn off other features
MOTION_TRACK_ON = False  # Default= True True=Turns Motion Detect On, False=Off
MOTION_TRACK_QUICK_PIC_ON = False  # Default= False True= Grab stream frame rather than stopping stream to take full size image
MOTION_VIDEO_ON = False  # Default= False  True=Take a video clip rather than image
MOTION_TRACK_MINI_TL_ON = False  # Default= False  True=Take a quick time lapse sequence rather than a single image (overrides MOTION_VIDEO_ON)
VIDEO_REPEAT_ON = (
    False  # Turn on Video Repeat Mode IMPORTANT Overrides timelapse and motion
)
PANO_ON = False  # Default= True Enable image stitching using pantilt overlapping images False= Disabled
