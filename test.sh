#!/bin/bash

echo "===== STOP JENKINS ====="
sudo systemctl stop jenkins

echo "===== CLEAN TEMP FILES ====="
sudo rm -rf /tmp/*

echo "===== CLEAN APT CACHE ====="
sudo apt clean

echo "===== CLEAN DOCKER ====="
docker system prune -af || true

echo "===== DOWNLOAD LATEST JENKINS ====="
sudo wget -O /usr/share/jenkins/jenkins.war \
https://get.jenkins.io/war-stable/latest/jenkins.war

echo "===== START JENKINS ====="
sudo systemctl start jenkins

echo "===== WAITING 30 SECONDS ====="
sleep 30

echo "===== RECREATE NETWORK ====="
docker network create jenkins_network 2>/dev/null || true

echo ""
echo "===== DISK ====="
df -h

echo ""
echo "===== JENKINS STATUS ====="
sudo systemctl is-active jenkins

echo ""
echo "===== JENKINS VERSION ====="
java -jar /usr/share/jenkins/jenkins.war --version

echo ""
echo "===== DOCKER NETWORK ====="
docker network ls | grep jenkins

echo ""
echo "===== DOCKER VOLUME ====="
docker volume ls | grep jenkins

echo ""
echo "===== URL ====="
echo "http://$(curl -s ifconfig.me):8080"
