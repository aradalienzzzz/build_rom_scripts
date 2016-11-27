#!/bin/sh
#configs
HOST=''
USER=''
PASSWD=''
fullpath=$(pwd)'/out/target/product/'
rompath=$(pwd)
ROM_VERSION='ROM-v6.4-'

#Load Config File
source build_rom.conf

tput reset


#d850
FILE=$fullpath"$device_1"
cd $FILE
FILESIZE=$(stat -c%s $ROM_VERSION"$device_1"-*.zip)
echo "Size of $ROM_VERSION"$device_1"-*.zip = $FILESIZE bytes."
echo ""
ftp -n -v $HOST <<END_SCRIPT
user $USER $PASSWD
binary
tick
put $ROM_VERSION"$device_1"-*.zip
quit
END_SCRIPT
cd $rompath

#d851
FILE=$fullpath"$device_2"
cd $FILE
FILESIZE=$(stat -c%s $ROM_VERSION"$device_2"-*.zip)
echo "Size of $ROM_VERSION"$device_2"-*.zip = $FILESIZE bytes."
echo ""
ftp -n -v $HOST <<END_SCRIPT
user $USER $PASSWD
binary
tick
put $ROM_VERSION"$device_2"-*.zip
quit
END_SCRIPT
cd $rompath

#d852
FILE=$fullpath"$device_3"
cd $FILE
FILESIZE=$(stat -c%s $ROM_VERSION"$device_3"-*.zip)
echo "Size of $ROM_VERSION"$device_3"-*.zip = $FILESIZE bytes."
echo ""
ftp -n -v $HOST <<END_SCRIPT
user $USER $PASSWD
binary
tick
put $ROM_VERSION"$device_3"-*.zip
quit
END_SCRIPT
cd $rompath

#d855
FILE=$fullpath"$device_4"
cd $FILE
FILESIZE=$(stat -c%s $ROM_VERSION"$device_4"-*.zip)
echo "Size of $ROM_VERSION"$device_4"-*.zip = $FILESIZE bytes."
echo ""
ftp -n -v $HOST <<END_SCRIPT
user $USER $PASSWD
binary
tick
put $ROM_VERSION"$device_4"-*.zip
quit
END_SCRIPT
cd $rompath

#f400
FILE=$fullpath"$device_5"
cd $FILE
FILESIZE=$(stat -c%s $ROM_VERSION"$device_5"-*.zip)
echo "Size of $ROM_VERSION"$device_5"-*.zip = $FILESIZE bytes."
echo ""
ftp -n -v $HOST <<END_SCRIPT
user $USER $PASSWD
binary
tick
put $ROM_VERSION"$device_5"-*.zip
quit
END_SCRIPT
cd $rompath

#ls990
FILE=$fullpath"$device_6"
cd $FILE
FILESIZE=$(stat -c%s $ROM_VERSION"$device_6"-*.zip)
echo "Size of $ROM_VERSION"$device_6"-*.zip = $FILESIZE bytes."
echo ""
ftp -n -v $HOST <<END_SCRIPT
user $USER $PASSWD
binary
tick
put $ROM_VERSION"$device_6"-*.zip
quit
END_SCRIPT
cd $rompath

#vs985
FILE=$fullpath"$device_7"
cd $FILE
FILESIZE=$(stat -c%s $ROM_VERSION"$device_7"-*.zip)
echo "Size of $ROM_VERSION"$device_7"-*.zip = $FILESIZE bytes."
echo ""
ftp -n -v $HOST <<END_SCRIPT
user $USER $PASSWD
binary
tick
put $ROM_VERSION"$device_7"-*.zip
quit
END_SCRIPT
cd $rompath

