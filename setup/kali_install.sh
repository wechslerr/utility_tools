#!/bin/sh

# if you copy setup.sh from windows to kali, you need "sed -i 's/\r//' kali_install.sh"

cd $HOME
sudo apt-get update -y
sudo apt-get install gdb fcrackzip steghide crackmapexec bloodhound -y

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

apt-get update
apt-get install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade git+https://github.com/Gallopsled/pwntools.git@dev

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
wget https://www.ghidra-sre.org/ghidra_9.2_PUBLIC_20201113.zip
unzip ghidra_9.2_PUBLIC_20201113.zip
rm ghidra_9.2_PUBLIC_20201113.zip

cd $HOME
wget https://github.com/Konloch/bytecode-viewer/releases/download/v2.9.22/Bytecode-Viewer-2.9.22.jar

cd $HOME
git clone https://github.com/scwuaptx/Pwngdb
cp ~/Pwngdb/.gdbinit ~/.gdbinit_peda

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
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt update
sudo apt remove docker docker-engine docker.io
sudo apt install docker-ce -y

cd $HOME
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

cd $HOME
echo source ~/gef/gef.py > .gdbinit_gef
echo source ~/pwndbg/gdbinit.py > .gdbinit_pwndbg
echo source ~/pwndbg/gdbinit.py ~/.gdbinit

cd $HOME
git clone https://github.com/niklasb/libc-database
cd libc-database

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

mkdir ffuf
cd ffuf
wget https://github.com/ffuf/ffuf/releases/download/v1.0.2/ffuf_1.0.2_linux_amd64.tar.gz
tar -zxvf ffuf_1.0.2_linux_amd64.tar.gz
sudo ln -s /home/kali/tools/ffuf/ffuf /home/kali/bin/ffuf

sudo ln -s /home/kali/tools/dirsearch/dirsearch.py /home/kali/bin/dirsearch.py

cd cd $HOME/tools
mkdir mimikatz
cd mimikatz
wget https://github.com/gentilkiwi/mimikatz/releases/download/2.2.0-20200308/mimikatz_trunk.zip
unizp mimikatz_trunk.zip

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
mkdir "privelage escalation"
cd "privelage escalation"
mkdir windows
cd windows
git clone https://github.com/abatchy17/WindowsExploits
git  clone https://github.com/SecWiki/windows-kernel-exploits
git clone https://github.com/AonCyberLabs/Windows-Exploit-Suggester
cd Windows-Exploit-Suggester
./windows-exploit-suggester.py --update
yes | pip install xlrd --upgrade

cd $HOME
cd "privelage escalation"
mkidr linux
cd linux
git clone https://github.com/SecWiki/linux-kernel-exploits
wget https://raw.githubusercontent.com/dirtycow/dirtycow.github.io/master/dirtyc0w.c
gcc -pthread dirtyc0w.c -o dirtyc0w

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
cp msfvenom_maker/msfvenom_maker $HOME/bin/msfvenom_maker
chmod +x /bin/msfvenom_maker

<<<<<<< HEAD
sudo apt install seclists curl enum4linux gobuster nbtscan nikto nmap onesixtyone oscanner smbclient smbmap smtp-user-enum snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf
=======
sudo apt-get install seclists curl enum4linux gobuster nbtscan nikto nmap onesixtyone oscanner smbclient smbmap smtp-user-enum snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf -y
>>>>>>> af5aab7e87dee0967ffc281aacc54d84c0ee2c30

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
alias rustscan='sudo docker run -it --rm --name rustscan cmnatic/rustscan:debian-buster rustscan'
COMMENTOUT

# after write bashrc you need source ~/.bashrc

# if you use zsh you need rewrite bashrc to zshrc
