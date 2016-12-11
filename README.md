# build_rom_scripts

crontab -e example:
13 19 * * * /home/aclegg2011/Android-dev/rr/7.1/auto_build_rom.sh > /home/aclegg2011/rr_build.log
cron runs /home/aclegg2011/Android-dev/rr/7.1/auto_build_rom.sh at 7:13pm, on any day, and everything logged to /home/aclegg2011/rr_build.log 

Make sure all .sh are chmod a+x. DO NOT CHMOD A+X the config file! Modify the config file and the auto_rom_build.sh line 21 (# cd to roms top root dir)
