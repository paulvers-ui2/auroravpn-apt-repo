# auroravpn-apt-repo
auroravpn linux repo


how to install

curl -fsSL https://github.com/paulvers-ui2/auroravpn-apt-repo/releases/latest/download/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/auroravpn.gpg

echo "deb [signed-by=/usr/share/keyrings/auroravpn.gpg] https://github.com/paulvers-ui2/auroravpn-apt-repo/releases/latest/download/ ./" | sudo tee /etc/apt/sources.list.d/auroravpn.list

sudo apt update && sudo apt install auroravpn
