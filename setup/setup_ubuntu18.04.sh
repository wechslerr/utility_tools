#!/bin/sh

# setup_ubuntu18.04.sh
# 2019/09/10
# for ubuntu 18.04

# if you copy setup.sh from windows to ubuntu, you need "sed -i 's/\r//' setup_ubuntu18.04.sh"

sudo apt-get install build-essential gcc-multilib git gdb nasm libc6:i386 vim -y
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
echo export PATH=$HOME/bin:$PATH >> ~/.bashrc
mkdir $HOME/bin
wget https://github.com/downloads/0vercl0k/rp/rp-lin-x64 -O $HOME/bin/rp
chmod +x $HOME/bin/rp

mkdir install
cd install
wget https://github.com/Kitware/CMake/releases/download/v3.15.3/cmake-3.15.3-Linux-x86_64.sh
chmod +x cmake-3.15.3-Linux-x86_64.sh
./cmake-3.15.3-Linux-x86_64.sh
rm cmake-3.15.3-Linux-x86_64.sh
sudo mv cmake-3.15.3-Linux-x86_64 /opt
sudo ln -s /opt/cmake-3.15.3-Linux-x86_64/bin/* /usr/bin

sudo apt-get install python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential -y
yes | sudo pip install --upgrade pip
yes | sudo pip install --upgrade pwntools

mkdir $HOME/tools
mkdir $HOME/tools/Stegsolve
cd $HOME/tools
git clone https://github.com/volatilityfoundation/volatility
wget http://www.caesum.com/handbook/Stegsolve.jar -O $HOME/tools/Stegsolve/stegsolve.jar
chmod +x stegsolve.jar
echo -e '#!/bin/sh\njava -jar Stegsolve.jar' > $HOME/tools/Stegsolve/run

cd $HOME
wget https://github.com/radareorg/cutter/releases/download/v1.9.0/Cutter-v1.9.0-x64.Linux.AppImage
chmod +x Cutter-v1.9.0-x64.Linux.AppImage

cd $HOME
git clone https://github.com/radare/radare2
cd radare2
sudo sys/install.sh
sudo r2pm init
sudo r2pm update
sudo r2pm -i r2ghidra-dec

cd $HOME
git clone https://github.com/Ganapati/RsaCtfTool
git clone https://github.com/hugsy/gef

sudo apt-get install python3-dev libffi-dev build-essential virtualenvwrapper zsh curl openjdk-11-jdk -y
yes | sudo pip install angr

cd $HOME
wget https://ghidra-sre.org/ghidra_9.0.4_PUBLIC_20190516.zip
unzip ghidra_9.0.4_PUBLIC_20190516.zip
rm ghidra_9.0.4_PUBLIC_20190516.zip

cd $HOME
yes | sudo pip install docopt
git clone https://github.com/hellman/xortool.git
cd xortool/
sudo python setup.py install

cd $HOME
git clone https://github.com/niklasb/libc-database
cd libc-database
./get

cd $HOME
sudo apt-get install ruby ruby-dev python3-pip rubygems -y
sudo gem install one_gadget

cd $HOME
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
sudo ./setup.sh

cd $HOME
git clone https://github.com/2O2L2H/gdb-switcher
cd gdb-switcher
sudo ./install.sh
sudo ./setup.sh

source ~/.bashrc
cd $HOME

# chsh -s /usr/bin/zsh

cd $HOME
rm setup_ubuntu18.04.sh

# if you use zsh you need rewrite bashrc to zshrc in gdb-switcher setup.sh.
