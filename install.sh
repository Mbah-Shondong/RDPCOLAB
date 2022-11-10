import os
from IPython.display import clear_output
mkdir -p ~/.tema && cd ~/.tema && wget https://raw.githubusercontent.com/Mbah-Shondong/RDPCOLAB/main/Windows10.zip && unzip Windows10.zip && sudo cp -a Windows-10-3.2.1 /usr/share/themes && cd ~ && rm -R ~/.tema
clear_output()
#@title # <CENTER>**RDP NOTEBOOK MBAHSHONDONG**
#@markdown <center><h2>Copy&paste authtoken from https://dashboard.ngrok.com/auth

#@markdown ---
token = "" #@param {type:"string"}
pilihregion = 'ap' #@param {type:"string"} ["us", "eu", "ap", "au", "sa", "jp", "in"]
echo -e "ok123\nok123\n" | sudo passwd
echo "Processing Download dan Menginstal ngrok"
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1
./ngrok authtoken {token} > /dev/null 2>&1
./ngrok tcp --region  {pilihregion} 3389 &>/dev/null &
mkdir -p ~/.icon && cd ~/.icon && wget https://raw.githubusercontent.com/Mbah-Shondong/RDPCOLAB/main/Windows10icon.zip && unzip Windows10icon.zip && sudo cp -a Windows-10-master /usr/share/icons && cd ~ && rm -R ~/.icon
clear_output()
echo "Menginstal Desktop Environment"
sudo apt-get update > /dev/null 2>&1
sudo apt-get install xfce4 xfce4-terminal -y > /dev/null 2>&1
sudo apt remove xscreensaver > /dev/null 2>&1
mkdir -p ~/.dektop && cd ~/.dektop && wget https://raw.githubusercontent.com/Mbah-Shondong/RDPCOLAB/main/xfce-teal.zip && unzip xfce-teal.zip && sudo cp -a xfce-teal.jpg /usr/share/backgrounds/xfce/ && cd ~ && rm -R ~/.dektop
clear_output()
echo "Menginstal Browser Firefox"
sudo apt install firefox -y  > /dev/null 2>&1
echo "Menginstal Browser Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo dpkg -i google-chrome-stable_current_amd64.deb > /dev/null 2>&1
echo "Menginstal Notepad"
sudo apt install gedit > /dev/null 2>&1
echo "Menginstal Media Player"
sudo apt install -y vlc > /dev/null 2>&1
echo "Menginstal Browser Chromium"
sudo apt install -y chromium-browser > /dev/null 2>&1
echo "Setting Desktop"
mkdir -p ~/.seting && cd ~/.seting && wget https://raw.githubusercontent.com/Mbah-Shondong/RDPCOLAB/main/xsettings.zip && unzip xsettings.zip && sudo cp -a xsettings.xml /etc/xdg/xfce4/xfconf/xfce-perchannel-xml && cd ~ && rm -R ~/.seting
clear_output()
echo "Menginstal XRDP"
sudo apt install -y xrdp  > /dev/null 2>&1
sudo adduser xrdp ssl-cert  > /dev/null 2>&1
sudo sed -i.bak '/fi/a lxde-session \n' /etc/xrdp/startwm.sh  > /dev/null 2>&1
sudo service xrdp restart > /dev/null 2>&1
mkdir -p ~/.compi && cd ~/.compi && wget https://raw.githubusercontent.com/Mbah-Shondong/RDPCOLAB/main/.config.zip && unzip .config.zip && sudo cp -a .config /root && cd ~ && rm -R ~/.compi
clear_output()
echo "==============================="
echo "=      STATUS COMPLETED"
echo "==============================="
echo "=       RDP IP ADDRESS"
echo "=-----------------------------="
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "=-----------------------------="
echo "=   user= root"    "pass= ok123    ="
echo "==============================="
sleep 43200
