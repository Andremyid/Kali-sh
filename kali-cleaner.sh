#!/bin/bash
YELLOW="\033[1;33m"
RED="\033[0;31m"
ENDCOLOR="\033[0m"

echo
echo $RED"==================== Kali-Cleaner ===================="$ENDCOLOR
echo $RED"=           Cleaner for Kali by Andre myID           ="$ENDCOLOR
echo $RED"======================================================"$ENDCOLOR
echo

OLDCONF=$(dpkg -l|grep "^rc"|awk '{print $2}')
CURKERNEL=$(uname -r|sed 's/-*[a-z]//g'|sed 's/-386//g')
LINUXPKG="linux-(image|headers|debian-modules|restricted-modules)"
METALINUXPKG="linux-(image|headers|restricted-modules)-(generic|i386|server|common|rt|xen)"
#OLDKERNELS=$(dpkg -l|awk '{print $2}'|grep -E $LINUXPKG |grep -vE $METALINUXPKG|grep -v $CURKERNEL)

if [ $USER != root ]; then
echo $RED"[Kali-cleaner]:Error: must be root"
echo $YELLOW"[Kali-cleaner]:Exiting..."$ENDCOLOR
exit 0
fi

echo $YELLOW"[Kali-cleaner]:Install apt aptitude..."$ENDCOLOR
sudo apt install aptitude -y
 
echo $YELLOW"[Kali-cleaner]:Cleaning apt cache..."$ENDCOLOR
sudo aptitude clean
 
echo $YELLOW"[Kali-cleaner]:Removing old config files..."$ENDCOLOR
sudo aptitude purge $OLDCONF
 
echo $YELLOW"[Kali-cleaner]:Removing old kernels..."$ENDCOLOR
sudo aptitude purge $OLDKERNELS
 
echo $YELLOW"[Kali-cleaner]:Emptying every trashes..."$ENDCOLOR
rm -rf /home/*/.local/share/Trash/*/** &> /dev/null
rm -rf /root/.local/share/Trash/*/** &> /dev/null
 
echo $YELLOW"[Kali-cleaner]:Script Finished!"$ENDCOLOR
echo 
echo $RED"Goodbye........."$ENDCOLOR
