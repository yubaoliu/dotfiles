INSTALL_PATH="~/Software"
mkdir -p $INSTALL_PATH/install

# Typora
## https://typora.io/
# or run:
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
# add Typora's repository
sudo add-apt-repository -y 'deb https://typora.io/linux ./'
sudo apt-get update
# install typora
sudo apt-get install -y typora

# Grive2
# http://yourcmc.ru/wiki/Grive2#Installation
sudo apt-get install -y git cmake build-essential libgcrypt20-dev libyajl-dev \
    libboost-all-dev libcurl4-openssl-dev libexpat1-dev libcppunit-dev binutils-dev \
    debhelper zlib1g-dev dpkg-dev pkg-config inotify-tools

cd $INSTALL_PATH \
    && git clone https://github.com/vitalif/grive2.git \
    && cd grive2 \
    && mkdir build \
    && cd build \
    && cmake .. -DCMAKE_INSTALL_PREFIX=$INSTALL_PATH/install \
    && make -j4 \
    && make install

# Usage
#cd $HOME
#mkdir google-drive
#cd google-drive
#grive -a

