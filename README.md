#!/bin/bash

set -e

echo "===== Updating System ====="
sudo apt-get update -y
sudo apt-get upgrade -y

echo "===== Installing Java ====="
sudo apt-get install -y default-jdk

java -version

echo "===== Installing AWS CLI ====="
sudo apt-get install -y curl unzip zip

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o awscliv2.zip

unzip -o awscliv2.zip

sudo ./aws/install || true

aws --version

echo "===== Installing Docker ====="

sudo apt-get install -y \
apt-transport-https \
ca-certificates \
curl \
software-properties-common \
gnupg

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
sudo gpg --dearmor -o /usr/share/keyrings/docker.gpg

echo \
"deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | \
sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update -y

sudo apt-get install -y docker-ce docker-ce-cli containerd.io || \
sudo apt-get install -y docker.io

sudo systemctl enable docker
sudo systemctl start docker

docker --version

echo "===== Installing Jenkins ====="

sudo rm -f /etc/apt/sources.list.d/jenkins.list

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | \
sudo gpg --dearmor -o /usr/share/keyrings/jenkins-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.gpg] https://pkg.jenkins.io/debian-stable binary/" | \
sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update -y

sudo apt-get install -y jenkins

sudo systemctl enable jenkins
sudo systemctl start jenkins

echo "===== Jenkins Status ====="
sudo systemctl status jenkins --no-pager

echo ""
echo "===== Initial Jenkins Password ====="
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo ""
echo "===== Public IP ====="
curl ifconfig.me

echo ""
echo "Open:"
echo "http://<PUBLIC-IP>:8080"
