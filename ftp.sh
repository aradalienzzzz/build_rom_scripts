#!/bin/sh
#configs
COUNTER=1
source build_rom.conf
tput reset

# increase -lt+1 depending on how many devices being built, ie. 6 devices = -lt 7
while [ $COUNTER -lt 5 ]; do
FILEPATH=$fullpath"${device[COUNTER]}"
cd $FILEPATH
FILENAME=$(ls R*.zip)
FILESIZE=$(stat -c%s R*.zip)
echo "Size of $FILENAME = $FILESIZE bytes."
echo ""
echo ""
ftp -n -v $HOST <<END_SCRIPT
user $USER $PASSWD
binary
tick
put $FILENAME
quit
END_SCRIPT
cp -R $FILENAME /home/aclegg2011/Android-dev/roms/$FILENAME
echo ""
cd $rompath
let COUNTER=COUNTER+1
done
