wget https://raw.githubusercontent.com/Mbah-Shondong/RDPCOLAB/main/ngrok.sh && chmod +x ngrok.sh && ./ngrok.sh
sudo apt-get update > /dev/null 2>&1
sudo apt install xfce4 xorg dbus-x11 x11-xserver-utils > /dev/null 2>&1
echo "Menginstal Firefox"
sudo apt install firefox -y > /dev/null 2>&1
echo "Install Brave"
sudo apt install apt-transport-https curl > /dev/null 2>&1
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null 2>&1
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list > /dev/null 2>&1
sudo apt update > /dev/null 2>&1
sudo apt install brave-browser > /dev/null 2>&1
echo "Menginstal XRDP"
sudo apt install -y xrdp > /dev/null 2>&1
sudo adduser xrdp ssl-cert > /dev/null 2>&1
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "----------------------------------------------------------------------"
echo "- WES JOSS MAS IKI OJO DI TUTUP LHO YA NEK DITUTUP PODOWAE SHUT DOWN -"
echo "----------------------------------------------------------------------"
sleep 43200
