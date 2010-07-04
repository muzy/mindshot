#!/bin/sh
###################################
# Configuration file for MindShot #
###################################

# Destination for the files (don't forget the trailing /)
destdir="/"

# File Name (without data extension)
filename="$(date +%Y.%m.%d-%k.%M)"

# File Formats
# 
# Important notice:
#  Even if you disable the ps or png extension a .ps and .png 
#  will be created because those are needed for other formats.
#  This file will deleted if you set the value to "false".
ps="true"
pdf="true"
png="true"
jpeg="true"
bmp="true"

# Firefox command
#  due to some derviatives of firefox there are several 
#  firefox forks. Please specify the firefox command below.
#  (known commands are "firefox" and "iceweasel")
firefoxcommand="firefox"

