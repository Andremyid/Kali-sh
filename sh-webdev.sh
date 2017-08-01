#!/bin/bash
LightCyan="\033[1;36m"
LightGreen="\033[1;32m"
LightRed="\033[1;31m"
Yellow="\033[1;33m"
End="\033[0m"

echo
echo $LightRed"==================== "$LightCyan"Kali-Web Dev"$LightRed" ===================="
echo "=           "$Yellow"Web Dev for Kali by Andre myID"$LightRed"           ="
echo "======================================================"$End
echo

if [ $USER != root ]; then
echo $LightRed"[Kali-webdev]:"$Yellow"Error: must be root"
echo $LightRed"[Kali-webdev]:"$Yellow"Exiting..."$End
exit 0
fi

echo $LightRed"[Kali-webdev]:"$LightCyan"sh kali-updater"$End
#sudo apt update
echo

echo $LightRed"[Kali-webdev]:"$Yellow"Apt install composer -y..."$End
sudo apt install composer -y
echo

echo $LightRed"[Kali-webdev]:"$Yellow"Apt install php7.0-mcrypt -y..."$End
sudo apt install php7.0-mcrypt -y
echo

echo $LightRed"[Kali-webdev]:"$Yellow"Apt install filezilla -y..."$End
sudo apt install filezilla -y
echo

echo $LightRed"[Kali-webdev]:"$Yellow"Apt install uget -y..."$End
sudo apt install uget -y
echo

echo $LightRed"[Kali-webdev]:"$Yellow"Apt install gdebi -y..."$End
sudo apt install gdebi -y
echo

echo $LightRed"[Kali-webdev]:"$Yellow"gdebi /media/root/FILES/SOFTWARE/IDE/atom-amd64.deb"$End
#gdebi /media/root/FILES/SOFTWARE/IDE/atom-amd64.de
echo
#'atom-text-editor':
#  'cmd-alt-l': 'editor:auto-indent'

echo $LightRed"[Kali-webdev]:"$Yellow"/media/root/FILES/SOFTWARE/XAMPP/xampp-linux-x64-5.6.30-1-installer.run"$End
#/media/root/FILES/SOFTWARE/XAMPP/xampp-linux-x64-5.6.30-1-installer.run
echo
# gedit /opt/lampp/etc/extra/httpd-vhosts.conf
# gedit /etc/hosts
# Virtual hosts & Directory
# gedit /opt/lampp/etc/httpd.conf

echo $LightRed"[Kali-webdev]:"$Yellow"Apt install network-manager-openvpn-gnome -y..."$End
#sudo apt install network-manager-openvpn-gnome -y
echo

echo $LightRed"[Kali-webdev]:"$Yellow"Apt install network-manager-openvpn network-manager-openvpn-gnome network-manager-pptp network-manager-pptp-gnome network-manager-strongswan network-manager-vpnc network-manager-vpnc-gnome -y..."$End
#sudo apt install network-manager-openvpn network-manager-openvpn-gnome network-manager-pptp network-manager-pptp-gnome network-manager-strongswan network-manager-vpnc network-manager-vpnc-gnome -y
echo

echo $LightRed"[Kali-webdev]:"$Yellow"Apt install virtualbox -y..."$End
sudo apt install virtualbox -y
echo

echo $LightRed"[Kali-webdev]:"$Yellow"Add Architecture dpkg i386..."$End
#sudo dpkg --add-architecture i386

echo $LightRed"[Kali-webdev]:"$LightCyan"sh kali-updater.sh"$End
#sudo apt update
#sudo apt upgrade -y
echo

echo $LightRed"[Kali-webdev]:"$Yellow"gdebi /media/root/FILES/SOFTWARE/REMOTE/teamviewer_12.0.76279_i386.deb"$End
#gdebi /media/root/FILES/SOFTWARE/REMOTE/teamviewer_12.0.76279_i386.deb
#sudo teamviewer --daemon enable
echo

echo $LightRed"[Kali-webdev]:"$LightCyan"sh kali-cleaner.sh"$End
#sudo sh kali-cleaner.sh
echo

echo $LightRed"[Kali-webdev]:"$LightGreen"Kali-Web Dev Finished! Happy Coding"$End ^.^v
echo
