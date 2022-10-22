echo -e "$123\n$123\n" | sudo passwd
wget https://raw.githubusercontent.com/Mbah-Shondong/RDPCOLAB/main/ngrok.sh && chmod +x ngrok.sh && ./ngrok.sh
sudo apt-get update > /dev/null 2>&1
docker pull danielguerra/alpine-xfce4-xrdp
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Wait 1 minute to finish bot"
echo "===================================="
echo "===================================="
docker run --rm -p 3388:3389 danielguerra/alpine-xfce4-xrdp > /dev/null 2>&1
