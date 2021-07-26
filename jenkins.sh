#!/bin/bash

sudo apt update

sudo apt install openjdk-8-jdk -y

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

echo "Installing git"
sudo apt-get -y install git > /dev/null 2>&1

sudo apt update

sudo apt install jenkins -y

sleep 1m

echo "Jenkins Password"
JENKINSPWD=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
echo $JENKINSPWD