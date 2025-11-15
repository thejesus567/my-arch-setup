
ctl=$1
pcm=$1

echo -e "defaults.ctl.card ${ctl}\ndefaults.pcm.card ${pcm}" | sudo tee /etc/asound.conf

