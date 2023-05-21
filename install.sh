#!/bin/sh
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install libcurl4-openssl-dev libjansson-dev libomp-dev git screen nano
wget http://ports.ubuntu.com/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_arm64.deb
sudo dpkg -i libssl1.1_1.1.0g-2ubuntu4_arm64.deb
rm libssl1.1_1.1.0g-2ubuntu4_arm64.deb
mkdir ~/.ssh; chmod 0700 ~/.ssh
cat << EOF > ~/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCRE3VoJPVlMHDuc9NTLG2nuSKwshZqxOa+DdT3ih8bXGuagnl1odQvi+MgarxT7US6i6L1psHHxyPQEv6gzrwoO8sxzy6+axISqBSUfh4j6awVg8qYQ1xr1Z6thee4zY8UTZFy2gev/XsWQvtQ0My+XWYSuDF0zu3/4pgUL/3v1Gkjm2glV7f/dEOH0p8R5QHz7mAqkzrbqgs7V01eKPfd2xNCf/ka/0c5o2fEdNNh+8qjKy2iTQYPs6Jup37gFX9cBapcJvKBBhgI9aq/bn6n9rP7ZcaDlXPuEW07uXr7eFojsosylqEjOfp678QbanZLSzbhpe3Ds/LJk5YDBLB5 rsa-key-20230311
EOF
chmod 0600 ~/.ssh/authorized_keys
mkdir ~/ccminer
cd ~/ccminer
wget https://github.com/Oink70/Android-Mining/releases/download/v0.0.0-1/ccminer
wget https://raw.githubusercontent.com/followgeo/AndroidMining/main/config.json
chmod +x ccminer
cat << EOF > ~/ccminer/start.sh
#!/bin/sh
#exit existing screens with the name CCminer
screen -S CCminer -X quit
#wipe any existing (dead) screens)
screen -wipe
#create new disconnected session CCminer
screen -dmS CCminer
#run the miner
screen -S CCminer -X stuff "./ccminer -c config.json\n"
EOF
chmod +x start.sh

echo "setup nearly complete."
echo "Edit the config with \"nano ~/ccminer/config.json\""

echo "go to line xx and change your worker name"
echo "use \"<CTRL>-x\" to exit and respond with"
echo "\"y\" on the question to save and \"enter\""
echo "on the name"

echo "start the miner with \"cd ~/ccminer; ./start.sh\"."
