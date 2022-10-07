wget https://raw.githubusercontent.com/Mbah-Shondong/RDPCOLAB/main/ngrok.sh && chmod +x ngrok.sh && ./ngrok.sh
sudo apt-get update > /dev/null 2>&1
sudo apt-get install xfce4 xfce4-terminal xfce4-goodies xorg dbus-x11 x11-xserver-utils -y > /dev/null 2>&1
echo "Menginstal Firefox"
sudo apt install firefox -y > /dev/null 2>&1
echo "Menginstal XRDP"
sudo apt install -y xrdp > /dev/null 2>&1
sudo adduser xrdp ssl-cert > /dev/null 2>&1
echo "----------------------------------------------------------------"
echo "-  ENTENI SAK WETORO UDUD NGOPI SEK MAS RAONO 2 MENIT KOK CUY  -"
echo "----------------------------------------------------------------"
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
echo XRDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "----------------------------------------------------------------------"
echo "- WES JOSS MAS IKI OJO DI TUTUP LHO YA NEK DITUTUP PODOWAE SHUT DOWN -"
echo "----------------------------------------------------------------------"
sleep 43200
