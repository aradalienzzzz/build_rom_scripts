#!/bin/sh
#configs
fullpath=$(pwd)'/out/target/product/'
rompath=$(pwd)
COUNTER=1
source build_rom.conf
tput reset


while [ $COUNTER -lt 4 ]; do
FILEPATH=$fullpath"${device[COUNTER]}"
cd $FILEPATH
FILENAME=$(ls R*.zip)
FILESIZE=$(stat -c%s R*.zip)
echo "Size of $FILENAME = $FILESIZE bytes."
echo ""
ftp -n -v $HOST <<END_SCRIPT
user $USER $PASSWD
binary
tick
put $FILENAME
quit
END_SCRIPT
cd $rompath
let COUNTER=COUNTER+1
done