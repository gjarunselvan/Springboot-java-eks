#!/bin/bash

echo "======================================"
echo "FIX JENKINS REPOSITORY"
echo "======================================"

sudo rm -f /etc/apt/sources.list.d/jenkins.list

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | \
sudo gpg --dearmor -o /usr/share/keyrings/jenkins-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.gpg] https://pkg.jenkins.io/debian-stable binary/" | \
sudo tee /etc/apt/sources.list.d/jenkins.list

echo "======================================"
echo "UPDATE PACKAGES"
echo "======================================"

sudo apt update

echo "======================================"
echo "INSTALL JENKINS"
echo "======================================"

sudo apt install jenkins -y

sudo systemctl enable jenkins
sudo systemctl start jenkins

echo "======================================"
echo "FIX DOCKER PERMISSIONS"
echo "======================================"

sudo usermod -aG docker ubuntu

sudo chmod 666 /var/run/docker.sock

echo "======================================"
echo "CREATE DOCKER VOLUME"
echo "======================================"

docker volume create jenkins_data

echo "======================================"
echo "CREATE DOCKER NETWORK"
echo "======================================"

docker network create jenkins_network

echo "======================================"
echo "VERIFY SERVICES"
echo "======================================"

echo ""
echo "JENKINS STATUS"
sudo systemctl is-active jenkins

echo ""
echo "DOCKER STATUS"
sudo systemctl is-active docker

echo ""
echo "DOCKER VOLUMES"
docker volume ls

echo ""
echo "DOCKER NETWORKS"
docker network ls | grep jenkins

echo ""
echo "JENKINS PASSWORD"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo ""
echo "PUBLIC IP"
curl -s ifconfig.me

echo ""
echo "OPEN JENKINS"
echo "http://$(curl -s ifconfig.me):8080"
