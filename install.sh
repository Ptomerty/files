# shadowsocks(-Qt)(-libev)
# discord
# spotify
# Binwalk -- attempting submodule?
# GitTools
# gdb-peda (checksec)
# ROPGadget
# python-minimal
# RsaCtfTool
# Stegsolve
# john
# subl
# sshuttle to replace shadowsocks!


#!/bin/bash -ex

# here we go.

32_BIT_SUPPORT=( libc6:i386 libncurses5:i386 libstdc++6:i386 gcc-multilib g++-multilib multiarch-support )
CTF_TOOLS_DEP=( build-essential libtool g++ gcc texinfo curl wget automake autoconf python python-dev git subversion unzip virtualenvwrapper lsb-release )
SSOCKS_DEP=( gettext build-essential autoconf libtool libpcre3-dev asciidoc xmlto libev-dev libudns-dev automake libmbedtls-dev libsodium-dev git python-m2crypto libc-ares-dev )
SUBL


SNAP=( discord spotify )


# setup sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# install dependencies
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y ${32_BIT_SUPPORT[*]} ${CTF_TOOLS_DE[*]} ${SSOCKS_DEP[*]}
sudo apt upgrade -y
sudo snap install ${SNAP[*]}

# install john, subl, ROPGadget, GitTools, nmap

sudo apt install -y john sublime-text nmap 

# Change lid closing behavior
# https://ubuntuforums.org/showthread.php?t=2392935


# Setup Shadowsocks
# https://www.linode.com/docs/networking/vpn/create-a-socks5-proxy-server-with-shadowsocks-on-ubuntu-and-centos7/


# Setup ctf-tools
# https://github.com/zardus/ctf-tools#usage

# Setup 
