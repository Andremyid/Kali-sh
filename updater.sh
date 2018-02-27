#!/bin/bash
LightCyan="\033[1;36m"
LightGreen="\033[1;32m"
LightRed="\033[1;31m"
Yellow="\033[1;33m"
End="\033[0m"

echo
echo $LightRed"==================== "$LightCyan"Kali-Updater"$LightRed" ===================="
echo "=           "$Yellow"Updater for Kali by Andre myID"$LightRed"           ="
echo "======================================================"$End
echo

if [ $USER != root ]; then
echo $LightRed"[Kali-updater]:"$Yellow"Error: must be root"
echo $LightRed"[Kali-updater]:"$Yellow"Exiting..."$End
exit 0
fi

# If the error message appears "The following signatures were invalid:"
# wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2018.1_all.deb
# apt install ./kali-archive-keyring_2018.1_all.deb

echo $LightRed"[Kali-updater]:"$Yellow"Apt update"$End
sudo apt update
echo

echo $LightRed"[Kali-updater]:"$Yellow"Apt full-upgrade [-y]..."$End
#sudo apt full-upgrade -y
sudo apt full-upgrade
echo

echo $LightRed"[Kali-updater]:"$Yellow"Apt upgrade [-y]..."$End
#sudo apt upgrade -y
sudo apt upgrade
echo

echo $LightRed"[Kali-updater]:"$Yellow"Apt auto-clean..."$End
sudo apt auto-clean
echo

echo $LightRed"[Kali-updater]:"$Yellow"Apt auto-remove -y..."$End
sudo apt auto-remove -y
echo

echo $LightRed"[Kali-updater]:"$LightCyan"sh kali-cleaner.sh"$End
sudo sh kali-cleaner.sh
#echo

echo $LightRed"[Kali-updater]:"$Yellow"history -c [do manual]"$End
#sudo history -c
echo

echo $LightRed"[Kali-updater]:"$LightGreen"Kali-Updater Finished! I Hope Your Computer Feel Happy"$End ^.^v
echo
