# install ide
sudo snap install code --classic

sudo snap install pycharm-community --classic

sudo snap install intellij-idea-community --classic

# install package
sudo apt install -y curl

sudo apt install git

# install java
sudo apt-get install openjdk-8-jdk -y

# install python
sudo apt install -y python3-pip

# install node
sudo snap install node --channel=16/stable --classic

# install docker 
sudo apt install -y docker.io

sudo groupadd docker

sudo usermod -aG docker ${USER}

newgrp docker

# # install anaconda3
# wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh
# bash ./Anaconda3-2022.10-Linux-x86_64.sh
# bash
# conda create -n backend python=3.7
# rm ./Anaconda3-2022.10-Linux-x86_64.sh
