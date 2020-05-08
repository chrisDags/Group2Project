#!/bin/bash

echo "This script will automatically install minecraft pre-req"

sudo apt update & sudo apt upgrade -y 

mkdir ~/minecraft
cd ~/minecraft

wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar
sudo apt install -y openjdk-8-jre-headless screen

java -Xmx1024M -Xms1024M -jar server.jar nogui
echo "eula=true" > ~/minecraft/eula.txt
java -Xmx1024M -Xms1024M -jar server.jar nogui
