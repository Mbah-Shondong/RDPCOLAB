echo "===================================="
echo "Download windows files"
echo "===================================="
curl -L -o w7x86.img https://bit.ly/windosmbah
echo "===================================="
echo "Download ngrok"
echo "===================================="
wget https://raw.githubusercontent.com/Mbah-Shondong/RDPCOLAB/main/ngrok.sh && chmod +x ngrok.sh && ./ngrok.sh 
nohup ./ngrok tcp 3388 &>/dev/null &
./ngrok tcp 3388 &>/dev/null &
echo "===================================="
echo Downloading File 
echo "===================================="
apt-get install qemu > /dev/null 2>&1
echo "===================================="
echo "Wait"
echo "Starting Windows"
echo "===================================="
echo RDP Address:
echo "===================================="
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Ctrl+C To Copy"
echo "Wait 1-2 minute to finish bot"
echo "Dont Close This Tab"
echo "awokawok"
echo "===================================="
echo "===================================="
qemu-system-x86_64 -hda w7x86.img -m 8G -smp cores=4 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic > /dev/null 2>&1
sleep 43200
