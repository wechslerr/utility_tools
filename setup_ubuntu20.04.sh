#!/bin/sh

# setup_ubuntu18.04.sh
# for ubuntu

# if you copy setup.sh from windows to ubuntu, you need "sed -i 's/\r//' setup_ubuntu18.04.sh"

# When the license agreement for cmake appears, enter q, y, 

sudo apt-get update -y

mkdir install
cd install
wget https://github.com/Kitware/CMake/releases/download/v3.15.3/cmake-3.15.3-Linux-x86_64.sh
chmod +x cmake-3.15.3-Linux-x86_64.sh
./cmake-3.15.3-Linux-x86_64.sh
rm cmake-3.15.3-Linux-x86_64.sh
sudo mv cmake-3.15.3-Linux-x86_64 /opt
rm -rf cmake-3.15.3-Linux-x86_64
sudo ln -s /opt/cmake-3.15.3-Linux-x86_64/bin/* /usr/bin

sudo apt-get install build-essential gcc-multilib git gdb nasm libc6:i386 vim -y
git clone https://github.com/longld/peda.git ~/peda


mkdir $HOME/tools
mkdir $HOME/tools/Stegsolve
cd $HOME/tools
git clone https://github.com/volatilityfoundation/volatility
git clone https://github.com/sqlmapproject/sqlmap
wget http://www.caesum.com/handbook/Stegsolve.jar -O $HOME/tools/Stegsolve/stegsolve.jar
wget https://github.com/downloads/0vercl0k/rp/rp-lin-x64 -O $HOME/tools/rp
chmod +x $HOME/tools/rp
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
yes | sudo python3 -m pip install angr

cd $HOME
wget https://ghidra-sre.org/ghidra_9.1_PUBLIC_20191023.zip
unzip ghidra_9.0.4_PUBLIC_20190516.zip
rm ghidra_9.0.4_PUBLIC_20190516.zip

cd $HOME
git clone https://github.com/scwuaptx/Pwngdb
cp ~/Pwngdb/.gdbinit ~/.gdbinit_peda
cp ~/Pwngdb/.gdbinit ~/.gdbinit

cd $HOME
yes | sudo pip install docopt
git clone https://github.com/hellman/xortool.git
cd xortool/
sudo python setup.py install

cd $HOME
sudo apt-get install ruby ruby-dev python3-pip rubygems -y
sudo gem install one_gadget

cd $HOME
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
sudo apt-get -y install gdb python-dev python3-dev python-pip python3-pip libglib2.0-dev libc6-dbg -y
yes | sudo python3 -m pip install -r requirements.txt

cd $HOME
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

cd $HOME
sudo echo source ~/gef/gef.py > .gdbinit_gef
sudo echo source ~/pwndbg/gdbinit.py > .gdbinit_pwndbg

sudo apt update && sudo apt install -y build-essential python3 python3-dev python3-pip gdb libcapstone3 libcapstone-dev cmake
sudo -H pip3 install unicorn capstone filebytes
sudo -H pip3 install ropper

cd $HOME
wget https://github.com/keystone-engine/keystone/archive/0.9.1.tar.gz
tar xzvf 0.9.1.tar.gz 
cd keystone-0.9.1/
mkdir build
cd build
../make-share.sh
sudo make install
../bindings/python/
sudo make install3
cd $HOME
rm 0.9.1.tar.gz

cd $HOME/tools
git clone https://github.com/JonathanSalwan/ROPgadget
cd ROPgadget
sudo python setup.py install

cd $HOME/tools
git clone https://github.com/xct/ropstar
git clone https://github.com/niklasb/libc-database
cd libc-database

cd $HOME

echo alias gef="gdb --nh -ix ~/.gdbinit_gef" >> ~/.bashrc
echo alias pwndbg="gdb --nh -ix ~/.gdbinit_pwndbg" >> ~/.bashrc
echo alias peda="gdb --nh -ix ~/.gdbinit_peda" >> ~/.bashrc

source ~/.bashrc

cp .gdbinit_pwndbg .gdbinit

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# if you use zsh, you shoud write these in ~/.zshrc
# chsh -s /usr/bin/zsh

<< COMMENTOUT
export PATH=$HOME/bin:$PATH
alias gef="gdb --nh -ix ~/.gdbinit_gef"
alias pwndbg="gdb --nh -ix ~/.gdbinit_pwndbg"
alias peda="gdb --nh -ix ~/.gdbinit_peda"
COMMENTOUT

# after write bashrc you need source ~/.bashrc

# if you use zsh you need rewrite bashrc to zshrc
