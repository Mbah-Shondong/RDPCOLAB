rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/ngrok3389 > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo choose ngrok region
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3389 &>/dev/null &
clear
docker pull frxyt/xrdp:xfce
clear
sudo apt-get install firefox -y > /dev/null 2>&1
sudo apt install apt-transport-https curl > /dev/null 2>&1
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg > /dev/null 2>&1
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list > /dev/null 2>&1
sudo apt update > /dev/null 2>&1
sudo apt install brave-browser > /dev/null 2>&1
sudo apt install -y xrdp > /dev/null 2>&1
sudo sed -i.bak '/fi/a xfce-session \n' /etc/xrdp/startwm.sh > /dev/null 2>&1
sudo service xrdp start > /dev/null 2>&1
clear
echo "=======================100%"
echo "Username : debian"
echo "Password : ChangeMe"
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "Don't close this tab to keep RDP running"
docker run --rm -p 33890:3389 frxyt/xrdp:xfce
sleep 9876543210
