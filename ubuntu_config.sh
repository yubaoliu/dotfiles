# this file is to config ubuntu environment from a clean machine

echo "download packages to /tmp"
cd /tmp

echo "Install anaconda Python 2.7 Version"
wget -c https://repo.anaconda.com/archive/Anaconda2-2019.03-Linux-x86_64.sh
sudo chmod 755 ./Anaconda2-2019.03-Linux-x86_64.sh
# -u update an existing installation
./Anaconda2-2019.03-Linux-x86_64.sh -b -u -t -p ~/data/software/Anaconda2


echo "Python packages"
pip install  opencv-python \
    opencv-contrib-python 


echo "Latex"
sudo apt-get install -y texlive-full \
     latex-cjk-all   #CJK是Chinese，Japanese，Korean三种文字的支持 \
    auctex \
    texmaker
	




