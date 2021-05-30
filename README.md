```shell
#!/bin/bash

# telegram 
sudo apt install telegram-desktop -y

# spotify 
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - && echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list && sudo apt-get update -y && sudo apt-get install spotify-client -y

# google chrome 
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' && sudo apt-get update && sudo apt-get install google-chrome-stable -y

# be, net-tools, nmap and git 
sudo apt update && sudo apt install build-essential -y && sudo apt install net-tools -y && sudo apt install nmap -y && sudo apt install git -y && git config --global user.name "Stanislav Stoianov" && git config --global user.email "stanis.stoyanov@gmail.com"

# termius 
wget https://www.termius.com/download/linux/Termius.deb && chmod +x Termius.deb && sudo dpkg -i Termius.deb

# vlc
sudo apt install vlc -y

# peek 
sudo add-apt-repository ppa:peek-developers/stable -y && sudo apt update && sudo apt install peek -y

# neofecth 
sudo apt install neofetch -y

# krita
sudo add-apt-repository ppa:kritalime/ppa -y && sudo apt update && sudo apt-get install krita -y

# toolbox 
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.18.7455.tar.gz && tar -xvzf jetbrains-toolbox-1.18.7455.tar.gz && sudo rm -rf jetbrains-toolbox-1.18.7455.tar.gz && cd jetbrains-toolbox-1.18.7455

# cheese
sudo apt-get install cheese -y

```

see also
- [openvpn on \*nix system](https://github.com/angristan/openvpn-install)
- [kafka with zookeeper in docker-compose](https://github.com/simplesteph/kafka-stack-docker-compose)
- [postman on linux as native application](https://gist.github.com/SanderTheDragon/1331397932abaa1d6fbbf63baed5f043)
