#!/bin/bash
echo "This scrip will download, then build and/or install various applications."
echo "The list of application is in the readme of the repository"

read -p "Do you want to proceed (y/n) " yn

case $yn in 
	y ) echo "ok, Installing apps...";;
	n ) echo "ok, exiting...";
		sleep 1
		exit;;
	* ) echo "invalid response, exiting";
		sleep 1
		exit 1;;
esac

cd
#-----UPDATES-----
echo "Downloading apt updates..."
yes | sudo apt update
echo "Preforming apt full upgrade..."
yes | sudo apt full-upgrade
#-----traceroute-----
echo "Installing TraceRoute..."
yes | sudo apt install traceroute
#-----gotop-----
echo "Installing GoTop..."
cd /tmp
wget https://github.com/xxxserxxx/gotop/releases/download/v4.2.0/gotop_v4.2.0_linux_arm64.deb
yes | sudo apt install /tmp/gotop_v4.2.0_linux_arm64.deb
rm gotop_v4.2.0_linux_arm64.deb
#-----Docker-----
echo "Installing Docker..."
yes | sudo apt install docker.io
#-----neofetch-----
echo "Installing NeoFetch..."
yes | sudo apt install neofetch
#-----screen-----
echo "Installing Screen..."
yes | sudo apt install screen
#-----libsensors5-----
echo "Installing LibSensors5..."
yes | sudo apt install libsensors5
#-----xmrig & xmrig-mo-----
echo "Do you want to download and build XMRIG & XMRIG-MO?"

read -p "Press 'y' to continue or 'n' to exit (y/n) " yn

case $yn in 
	y ) echo "ok, Installing XMRIG & XMRIG-MO...";;
	n ) echo "ok, exiting...";
		sleep 1
		exit;;
	* ) echo "invalid response, exiting";
		sleep 1
		exit 1;;
esac
cd
echo "Downloading xmrig..."
sleep .2
git clone https://github.com/xmrig/xmrig.git
sleep .2
echo "Downloading xmrig-mo..."
sleep .2
cd
git clone https://github.com/MoneroOcean/xmrig.git xmrig-mo
sleep .2
echo "Downloading needed packages to proceed..."
sleep .2
yes | sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
sleep .2
echo "Building xmrig..."
sleep .2
cd && cd xmrig && mkdir build && cd build && cmake .. && sudo make
sleep .2
echo "Building xmrig-mo..."
sleep .2
cd && cd xmrig-mo && mkdir build && cd build && cmake .. && sudo make
sleep .2
echo "xmrig and xmrig-mo are now ready for use in your home directory..."
sleep 1
