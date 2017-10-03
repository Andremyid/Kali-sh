#!/bin/bash

# Bash Color : \[\033[ <code>m\] \]
#  Black=         "\033[0;30m"     DarkGray=      "\033[1;30m"
#  Blue=          "\033[0;34m"     LightBlue=     "\033[1;34m"
#  Green=         "\033[0;32m"     LightGreen=    "\033[1;32m"
#  Cyan=          "\033[0;36m"     LightCyan=     "\033[1;36m"
#  Red=           "\033[0;31m"     LightRed=      "\033[1;31m"
#  Purple=        "\033[0;35m"     LightPurple=   "\033[1;35m"
#  Brown=         "\033[0;33m"     Yellow=        "\033[1;33m"
#  LightGray=     "\033[0;37m"     White=         "\033[1;37m"
#  End="\033[0m"

LightCyan="\033[1;36m"
LightGreen="\033[1;32m"
LightRed="\033[1;31m"
Yellow="\033[1;33m"
End="\033[0m"

echo
echo $LightRed"==================== "$LightCyan"Kali-Cleaner"$LightRed" ===================="
echo "=           "$Yellow"Cleaner for Kali by Andre myID"$LightRed"           ="
echo "======================================================"$End
echo

OldConf=$(dpkg -l|grep "^rc"|awk '{print $2}')
CurKernel=$(uname -r|sed 's/-*[a-z]//g'|sed 's/-386//g')
LinuxPkg="linux-(image|headers|debian-modules|restricted-modules)"
MetaLinuxPkg="linux-(image|headers|restricted-modules)-(generic|i386|server|common|rt|xen)"
#OldKernels=$(dpkg -l|awk '{print $2}'|grep -E $LinuxPkg |grep -vE $MetaLinuxPkg|grep -v $CurKernel)

if [ $USER != root ]; then
    echo $LightRed"[Kali-cleaner]:Error: must be root"
    echo $Yellow"[Kali-cleaner]:Exiting..."$End
    exit 0
fi

echo $LightRed"[Kali-cleaner]:"$Yellow"Apt install aptitude..."$End
sudo apt install aptitude -y
echo

echo $LightRed"[Kali-cleaner]:"$Yellow"Cleaning apt cache..."$End
sudo aptitude clean
echo

echo $LightRed"[Kali-cleaner]:"$Yellow"Removing old config files..."$End
sudo aptitude purge $OldConf

echo $LightRed"[Kali-cleaner]:"$Yellow"Removing old kernels..."$End
sudo aptitude purge $OldKernels

echo $LightRed"[Kali-cleaner]:"$Yellow"Emptying every trashes..."$End
rm -rf /home/*/.local/share/Trash/*/** &> /dev/null
rm -rf /root/.local/share/Trash/*/** &> /dev/null
echo

echo $LightRed"[Kali-cleaner]:"$Yellow"Check RAM free -h"$End
sudo free -h
echo

#echo $LightRed"[Kali-cleaner]:"$Yellow"Clear PageCache only"$End
#sudo sync; echo 1 > /proc/sys/vm/drop_caches && free -h
#echo

#echo $LightRed"[Kali-cleaner]:"$Yellow"Clear Dentries and inodes"$End
#sudo sync; echo 2 > /proc/sys/vm/drop_caches && free -h
#echo

echo $LightRed"[Kali-cleaner]:"$Yellow"Cleaning PageCache, dentries and inodes"$End
sudo sync; echo 3 > /proc/sys/vm/drop_caches && free -h
echo

echo $LightRed"[Kali-cleaner]:"$Yellow"Cleaning Swap Space"$End
sudo swapoff -a && swapon -a && free -h
echo

echo $LightRed"[Kali-cleaner]:"$LightGreen"Kali-Cleaner Finished!"$End" ^.^v"
echo
