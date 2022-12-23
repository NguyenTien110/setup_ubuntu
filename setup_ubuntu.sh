# install ide
sudo snap install code --classic

sudo snap install pycharm-professional --classic

sudo snap install intellij-idea-community --classic

sudo snap install webstorm --classic

sudo snap install postman

# install package
sudo apt update

sudo apt install -y curl openvpn

sudo apt-get install openvpn network-manager-openvpn network-manager-openvpn-gnome network-manager-vpnc -y
sudo /etc/init.d/networking restart

sudo apt install -y git gcc g++

# install ibus bamboo -> go tieng viet
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install -y ibus ibus-bamboo --install-recommends
ibus restart
# Đặt ibus-bamboo làm bộ gõ mặc định
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"

# install java
sudo apt-get install openjdk-8-jdk -y
sudo apt install -y maven

## Scala
sudo apt-get remove scala-library scala
sudo wget https://downloads.lightbend.com/scala/2.12.3/scala-2.12.3.deb
sudo dpkg -i scala-2.12.3.deb
sudo apt-get update
sudo apt-get install -y scala

# SBT
sudo apt-get update
sudo apt-get install apt-transport-https curl gnupg -yqq
echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | sudo tee /etc/apt/sources.list.d/sbt.list
echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | sudo tee /etc/apt/sources.list.d/sbt_old.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo -H gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/scalasbt-release.gpg --import
sudo chmod 644 /etc/apt/trusted.gpg.d/scalasbt-release.gpg
sudo apt-get update
sudo apt-get install sbt

# install python
sudo apt install -y python3-pip

# install node
sudo snap install node --channel=16/stable --classic

# install docker 
sudo apt install -y docker.io

sudo groupadd docker

sudo usermod -aG docker ${USER}

newgrp docker

sudo chmod 666 /var/run/docker.sock

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

# # install anaconda3
# wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh
# bash ./Anaconda3-2022.10-Linux-x86_64.sh
# bash
# conda create -n backend python=3.7
# rm ./Anaconda3-2022.10-Linux-x86_64.sh

git config --global --add safe.directory '*'
