#!/bin/bash

echo "This script will automatically install minecraft pre-req"

apt update & apt upgrade -y 
apt install -y openjdk-jdk-headless screen

mkdir ~/minecraft
cd ~/minecraft

wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar

java -Xmx1024M -Xms1024M -jar server.jar nogui
echo "eula=true" > ~/eula.txt

