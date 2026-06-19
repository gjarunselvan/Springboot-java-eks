#!/bin/bash

echo "======================================"
echo "INSTALL JENKINS MANUALLY"
echo "======================================"

wget -O jenkins.deb https://pkg.jenkins.io/debian-stable/binary/jenkins_2.516.1_all.deb

sudo apt update

sudo apt install -y fontconfig openjdk-17-jre

sudo dpkg -i jenkins.deb || true

sudo apt --fix-broken install -y

sudo systemctl enable jenkins

sudo systemctl start jenkins

echo ""
echo "======================================"
echo "VERIFY"
echo "======================================"

echo "Jenkins Status:"
sudo systemctl is-active jenkins

echo ""

echo "Jenkins Password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo ""

echo "Listening Port:"
sudo ss -tulpn | grep 8080

echo ""

echo "Public URL:"
echo "http://$(curl -s ifconfig.me):8080"
