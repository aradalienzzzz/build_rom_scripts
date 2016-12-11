#!/bin/bash

#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

#Load Config File
source build_rom.conf

# cd to roms top root dir
cd /home/aclegg2011/Android-dev/rr/7.1/

# No scrollback buffer
echo -e '\0033\0143'

# Get intial time of script startup
res1=$(date +%s.%N)

# Specify colors for shell
red='tput setaf 1'              # red
green='tput setaf 2'            # green
yellow='tput setaf 3'           # yellow
blue='tput setaf 4'             # blue
violet='tput setaf 5'           # violet
cyan='tput setaf 6'             # cyan
white='tput setaf 7'            # white
txtbld=$(tput bold)             # Bold
bldred=${txtbld}$(tput setaf 1) # Bold red
bldgrn=${txtbld}$(tput setaf 2) # Bold green
bldblu=${txtbld}$(tput setaf 4) # Bold blue
bldcya=${txtbld}$(tput setaf 6) # Bold cyan
normal='tput sgr0'

tput bold
tput setaf 1
clear
echo -e "Build Any Rom"
echo -e ""
echo -e ""
echo -e ""
echo -e ""

sleep 1s

echo ""
echo ""
echo -e "${bldgrn}  syncing... "
echo ""
echo ""
repo sync --force-sync -j16

echo ""
echo ""
echo -e "${bldgrn}  Cleaning before starting build... "
echo ""
echo ""
make clobber && make clean

echo ""
echo ""
echo -e "${bldgrn}  Building $my_device, $device_1, $device_2, $device_3, $device_4, $device_5, $device_6, $device_7 now "  >&2
echo ""
echo ""
. build/envsetup.sh && brunch $device_1 && brunch $device_2 && brunch $device_3 && brunch $device_4 
. build/envsetup.sh && brunch $device_5 && brunch $device_6 && brunch $device_7



# Compilation complete
tput bold
tput setaf 1
echo -e ""
echo -e "Devices have all been built and uploaded"
echo -e ""
echo -e ""
