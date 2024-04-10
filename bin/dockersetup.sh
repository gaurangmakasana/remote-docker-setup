#!/bin/bash

sudo su
apt update
curl https://get.docker.com/rootless | sh
#apt install docker-compose
apt-get -y install docker-compose
usermod -aG docker cloud_user
apt-get -y install openjdk-19-jdk-headless