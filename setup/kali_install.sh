#!/bin/sh

# if you copy setup.sh from windows to kali, you need "sed -i 's/\r//' kali_install.sh"

sudo add-apt-repository ppa:webupd8team/terminix -y
sudo apt-get update -y
sudo apt-get install tilix -y

sudo apt-get install build-essential gcc-multilib git gdb nasm libc6:i386 vim -y
git clone https://github.com/longld/peda.git ~/peda
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
rm -rf cmake-3.15.3-Linux-x86_64
sudo ln -s /opt/cmake-3.15.3-Linux-x86_64/bin/* /usr/bin

sudo apt-get install python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential -y
yes | sudo pip install --upgrade pip
yes | sudo pip install --upgrade pwntools

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
wget https://ghidra-sre.org/ghidra_9.0.4_PUBLIC_20190516.zip
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
yes | python3 -m pip install -r requirements.txt

cd $HOME
sudo add-apt-repository ppa:webupd8team/terminix -y
sudo apt-get update -y
sudo apt-get install tilix -y

cd $HOME
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

cd $HOME
sudo echo source ~/gef/gef.py > .gdbinit_gef
sudo echo source ~/pwndbg/gdbinit.py > .gdbinit_pwndbg

cd $HOME
git clone https://github.com/niklasb/libc-database
cd libc-database
./get

cd $HOME
mkdir powershell
cd powershell
git clone https://github.com/cheetz/Easy-P
git clone https://github.com/PowerShellMafia/PowerSploit
git clone https://github.com/samratashok/nishang

cd $HOME
apt-get install gobuster -y
apt-get install filezilla -y
apt-get install alacarte -y

cd $HOME
mkdir tools
cd tools
git clone https://github.com/internetwache/GitTools
git clone https://github.com/DFC302/reverseme
git clone https://github.com/GDSSecurity/Windows-Exploit-Suggester
git clone https://github.com/pentestmonkey/unix-privesc-check
git clone https://github.com/mzet-/linux-exploit-suggester
git clone https://github.com/jondonas/linux-exploit-suggester-2
git clone https://github.com/rebootuser/LinEnum

cd $HOME
cp /etc/resolv.conf resolv.conf.bak

cd $HOME
git clone https://github.com/Yunolay/msfvenom_maker
cp msfvenom_maker/msfvenom_maker $HOME/bin/msfvenom_maker
chmod +x $HOME/bin/msfvenom_maker

cd /usr/share/wordlists
git clone https://github.com/danielmiessler/SecLists

cd $HOME

# chsh -s /usr/bin/zsh

# you shoud write these in ~/.bashrc

<< COMMENTOUT
export PATH=$HOME/bin:$PATH
alias gef="gdb --nh -ix ~/.gdbinit_gef"
alias pwndbg="gdb --nh -ix ~/.gdbinit_pwndbg"
alias peda="gdb --nh -ix ~/.gdbinit_peda"
COMMENTOUT

# after write bashrc you need source ~/.bashrc

# if you use zsh you need rewrite bashrc to zshrc
