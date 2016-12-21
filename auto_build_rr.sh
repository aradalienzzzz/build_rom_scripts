#!/bin/bash

#Repo Sync
repo sync -f --force-sync -j16

#Load Config File
source build_rom.conf

## use CCACHE, disable NINJA, 2 days BUILD LOGS
export USE_CCACHE=1
export USE_NINJA=false
export days_to_log=2
export RR_BUILDTYPE=OFFICIAL
export ANDROID_JACK_VM_ARGS="-Xmx2g -Dfile.encoding=UTF-8 -XX:+TieredCompilation"

# Only 4 devices can be built on one line, causes errors if more are added /use another line for more devices!
#. build/envsetup.sh && brunch ${device[2]} && brunch ${device[1]} 
#. build/envsetup.sh && brunch ${device[3]} && brunch ${device[4]}

COUNTERB=1

while [ $COUNTERB -lt 5 ]; do
make clobber && make clean
. build/envsetup.sh && brunch "${device[COUNTERB]}"
. ftp.sh
let COUNTERB=COUNTERB+1
done
