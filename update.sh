echo -e "airdrop\nairdrop" | sudo passwd
echo "Download dan Install NGROK "
wget https://raw.githubusercontent.com/Mbah-Shondong/RDPCOLAB/main/ngrok.sh && chmod +x ngrok.sh && ./ngrok.sh
echo "Install Desktop Environment"
sudo apt install xfce4 xfce4-terminal xorg dbus-x11 x11-xserver-utils -y
clear
echo "Update Repository"
sudo apt update > /dev/null 2>&1
echo "Install Browser"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo dpkg -i google-chrome-stable_current_amd64.deb > /dev/null 2>&1
echo "Install XRDP"
sudo apt install xrdp -y > /dev/null 2>&1
sudo adduser xrdp ssl-cert > /dev/null 2>&1
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
clear
echo "----------------------------------------------------------------------"
echo "----------------------------------------------------------------------"
echo "XRDP RUNNING ON"
sudo service xrdp restart > /dev/null 2>&1
echo "XRDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "----------------------------------------------------------------------"
echo "----------------------------------------------------------------------"
sleep 43200
