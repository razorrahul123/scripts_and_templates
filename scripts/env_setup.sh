#!/bin/bash

# colors
export TERM=xterm

    red=$(tput setaf 1) # red
    grn=$(tput setaf 2) # green
    blu=$(tput setaf 4) # blue
    cya=$(tput setaf 6) # cyan
    txtrst=$(tput sgr0) # Reset

# install necessary dependencies
sudo apt-get install bc bison build-essential curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline6-dev lib32z1-dev libesd0-dev liblz4-tool libncurses5-dev libsdl1.2-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev openjdk-8-jdk repo ccache megatools iat
echo -e ${cya}"Successfully installed required dependencies"${txtrst};

# set ccache limit
ccache -M 20G
echo "export USE_CCACHE=1" >> ~/.bashrc
echo -e ${cya}"Set ccache limit to 20GB to speedup compilation time"${txtrst};

echo -e ${cya}"Completed"${txtrst};
