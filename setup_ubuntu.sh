# install ide

# không install code -> tải từ trang chính tránh lôi không gõ được tiếng việt
# sudo snap install code --classic

# không dùng snap để lây license
# sudo snap install pycharm-professional --classic
# sudo snap install intellij-idea-community --classic
# sudo snap install webstorm --classic

sudo apt update

cd /tmp

wget https://ipfs.oceanprotocol.com/ipfs/bafybeia4nrbuvpfd6k7lkorzgjw3t6totaoko7gmvq5pyuhl2eloxnfiri/files/jetbra-ded4f9dc4fcb60294b21669dafa90330f2713ce4.zip
sudo unzip ./jetbra-ded4f9dc4fcb60294b21669dafa90330f2713ce4.zip -d ~/
cd ~/jetbra

./script/install.sh

cd /tmp

sudo wget https://download.jetbrains.com/webstorm/WebStorm-2023.2.5.tar.gz
sudo tar -xzf ./WebStorm-2023.2.5.tar.gz -C /opt
sudo mv /opt/WebStorm-232.10227.9/webstorm64.vmoptions /opt/WebStorm-232.10227.9/webstorm64.vmoptions.bk
sudo mv ~/jetbra/webstorm.vmoptions /opt/WebStorm-232.10227.9/webstorm64.vmoptions

sudo wget https://download.jetbrains.com/python/pycharm-professional-2023.2.5.tar.gz
sudo tar -xzf ./pycharm-professional-2023.2.5.tar.gz -C /opt
sudo mv /opt/pycharm-2023.2.5/pycharm64.vmoptions /opt/pycharm-professional-2023.2.5/pycharm64.vmoptions.bk
sudo mv ~/jetbra/pycharm.vmoptions /opt/pycharm-professional-2023.2.5/pycharm64.vmoptions

sudo wget https://download.jetbrains.com/idea/ideaIU-2023.2.5.tar.gz
sudo tar -xzf ./ideaIU-2023.2.5.tar.gz -C /opt
sudo mv /opt/idea-IU-232.10227.8/idea64.vmoptions /opt/idea-IU-232.10227.8/idea64.vmoptions.bk
sudo mv ~/jetbra/idea.vmoptions /opt/idea-IU-232.10227.8/idea64.vmoptions

# sudo wget https://download.jetbrains.com/ruby/RubyMine-2023.2.5.tar.gz
# sudo tar -xzf ./RubyMine-2023.2.5.tar.gz -C /opt
# sudo mv /opt/RubyMine-2023.2.5/rubymine64.vmoptions /opt/RubyMine-2023.2.5/rubymine64.vmoptions.bk
# sudo mv ~/jetbra/rubymine.vmoptions /opt/RubyMine-2023.2.5/rubymine64.vmoptions

# sudo wget https://download.jetbrains.com/webide/PhpStorm-2023.2.4.tar.gz
# sudo tar -xzf ./PhpStorm-2023.2.4.tar.gz -C /opt
# sudo mv /opt/PhpStorm-232.10227.13/phpstorm64.vmoptions /opt/PhpStorm-232.10227.13/phpstorm64.vmoptions.bk
# sudo mv ~/jetbra/phpStorm.vmoptions /opt/PhpStorm-232.10227.13/phpstorm64.vmoptions

sudo snap install postman

# install package
sudo apt update

sudo apt install -y curl openvpn

sudo apt-get install openvpn network-manager-openvpn network-manager-openvpn-gnome network-manager-vpnc -y
sudo /etc/init.d/networking restart

sudo apt install -y git gcc g++
sudo apt-get install python3-dev default-libmysqlclient-dev build-essential

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

# install anaconda3
wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh
bash ./Anaconda3-2022.10-Linux-x86_64.sh
bash
conda create -n py37 python=3.7
rm ./Anaconda3-2022.10-Linux-x86_64.sh

git config --global --add safe.directory '*'


sudo apt install flameshot -y
