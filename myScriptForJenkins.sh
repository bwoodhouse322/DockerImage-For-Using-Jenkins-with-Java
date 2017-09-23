#!/bin/bash
#script to setup working in java with maven on a ubuntu machine.
#This sets up all the software the user will need to create a jenkins
# environment that automates builds from Git



#switich to root
sudo -i

apt-get update
#curl and wget needed or jenkins installation
apt-get install -y curl
apt-get install -y wget


#installing java
add-apt-repository ppa:openjdk-r/ppa -y
apt-get update
apt-get -y install apache2 openjdk-8-jdk
update-alternatives --config java 
apt-get update

#installing maven
apt-get install -y maven
apt-get update

#installing Git
apt-get install -y git

wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
 sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
 apt-get update
apt-get install jenkins
