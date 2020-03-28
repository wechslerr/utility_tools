#!/bin/sh

# if you copy setup.sh from windows to kali, you need "sed -i 's/\r//' kali_install.sh"

cd $HOME
sudo apt-get update -y
sudo apt-get install fcrackzip steghide crackmapexec bloodhound -y

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
cd $HOME
rm -rf install

sudo apt-get install python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential steghide -y
yes | sudo pip install --upgrade pip
yes | sudo pip install --upgrade pwntools

apt-get install python3 python3-dev python3-pip git
python3 -m pip install --upgrade git+https://github.com/arthaud/python3-pwntools.git

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
wget https://ghidra-sre.org/ghidra_9.1.1_PUBLIC_20191218.zip
unzip ghidra_9.1.1_PUBLIC_20191218.zip
rm ghidra_9.1.1_PUBLIC_20191218.zip

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
git clone https://github.com/Hackplayers/Empire-mod-Hackplayers
cd Empire-mod-Hackplayers/setup
sudo ./install.sh

cd $HOME
git clone https://github.com/pwndbg/pwndbg
cd pwndbg
sudo apt-get -y install gdb python-dev python3-dev python-pip python3-pip libglib2.0-dev libc6-dbg -y
yes | python3 -m pip install -r requirements.txt

cd $HOME
sudo add-apt-repository ppa:webupd8team/terminix -y
sudo apt-get update -y
sudo apt-get install tmux -y

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
git clone https://github.com/Cn33liz/p0wnedShell
git clone https://github.com/n1nj4sec/pupy
git clone https://github.com/besimorhino/powercat

cd $HOME
sudo apt-get install gobuster -y
sudo apt-get install filezilla -y
sudo apt-get install alacarte -y

cd $HOME
mkdir tools
cd tools
git clone https://github.com/internetwache/GitTools
git clone https://github.com/GDSSecurity/Windows-Exploit-Suggester
git clone https://github.com/pentestmonkey/unix-privesc-check
git clone https://github.com/jondonas/linux-exploit-suggester-2
git clone https://github.com/sqlmapproject/sqlmap
git clone https://github.com/secretsquirrel/the-backdoor-factory
git clone https://github.com/J3wker/DLLicous-MaliciousDLL
git clone https://github.com/J3wker/anti-CSRF_Token-Bruteforce
git clone https://github.com/trustedsec/ptf 
git clone https://github.com/leebaird/discover
git clone https://github.com/Tib3rius/AutoRecon
git clone https://github.com/BloodHoundAD/BloodHound
git clone https://github.com/maurosoria/dirsearch
git clone https://github.com/SecureAuthCorp/impacket
cd impacket
sudo pip install .

sudo ln -s ~/tools/dirsearch/dirsearch.py ~/bin/dirsearch.py

cd cd $HOME/tools
mkdir mimikatz
cd mimikatz
wget https://github.com/gentilkiwi/mimikatz/releases/download/2.2.0-20200308/mimikatz_trunk.zip

cd $HOME
mkdir enum
cd enum
git clone https://github.com/rebootuser/LinEnum
git clone https://github.com/carlospolop/linux-privilege-escalation-awsome-script
git clone https://github.com/mzet-/linux-exploit-suggester
git clone https://github.com/PowerShellMafia/PowerSploit
git clone https://github.com/diego-treitos/linux-smart-enumeration
mkdir pspy
cd pspy
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy32

cd $HOME
sudo git clone https://github.com/carlospolop/legion.git /opt/legion
cd /opt/legion/git
sudo ./install.sh
sudo ln -s /opt/legion/legion.py /usr/bin/legion.py

cd $HOME
cp /etc/resolv.conf resolv.conf.bak

sudo gem install evil-winrm

cd $HOME
git clone https://github.com/EmpireProject/Empire
cd Empire
./setup/install.sh

cd $HOME
git clone https://github.com/Yunolay/msfvenom_maker
cp msfvenom_maker/msfvenom_maker_xfce.sh $HOME/bin/msfvenom_maker
chmod +x /bin/msfvenom_maker

cd $HOME
git clone https://github.com/Yunolay/port_scan_selector
cp msfvenom_maker/port_scan_selector $HOME/bin/port_scan_selector
chmod +x /bin/port_scan_selector

cd /usr/share/wordlists
sudo git clone https://github.com/danielmiessler/SecLists

cd $HOME
yes | python3 -m pip install stegcracker
sudo gunzip /usr/share/wordlists/rockyou.txt.gz

# chsh -s /usr/bin/zsh

# you shoud write these in ~/.bashrc

<< COMMENTOUT
export PATH=$HOME/bin:$PATH
alias open="xdg-open"
alias gef="gdb --nh -ix ~/.gdbinit_gef"
alias pwndbg="gdb --nh -ix ~/.gdbinit_pwndbg"
alias peda="gdb --nh -ix ~/.gdbinit_peda"
COMMENTOUT

# after write bashrc you need source ~/.bashrc

# if you use zsh you need rewrite bashrc to zshrc
