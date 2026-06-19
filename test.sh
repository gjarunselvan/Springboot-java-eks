#!/bin/bash

echo "=============================="
echo "STEP 3.4 - AWS IAM AUTHENTICATOR"
echo "=============================="

curl -L -o aws-iam-authenticator \
https://amazon-eks.s3.us-west-2.amazonaws.com/1.32.0/2024-12-20/bin/linux/amd64/aws-iam-authenticator

chmod +x aws-iam-authenticator

sudo mv aws-iam-authenticator /usr/local/bin/ 2>/dev/null

echo ""
echo "AWS IAM Authenticator:"
aws-iam-authenticator version || echo "Authenticator installation skipped"

echo ""
echo "=============================="
echo "STEP 3.5 - DOCKER"
echo "=============================="

sudo apt update

sudo apt install docker.io -y

sudo systemctl enable docker

sudo systemctl start docker

echo ""
echo "Docker Version:"
docker --version

echo ""
echo "Docker Status:"
sudo systemctl is-active docker

echo ""
echo "=============================="
echo "STEP 3.6 - JENKINS"
echo "=============================="

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | \
sudo tee /usr/share/keyrings/jenkins-keyring.asc >/dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/ | \
sudo tee /etc/apt/sources.list.d/jenkins.list >/dev/null

sudo apt update

sudo apt install jenkins -y

sudo systemctl enable jenkins

sudo systemctl start jenkins

echo ""
echo "Jenkins Status:"
sudo systemctl is-active jenkins

echo ""
echo "=============================="
echo "STEP 4 - DOCKER VOLUME"
echo "=============================="

docker volume create jenkins_data

echo ""
echo "Docker Volumes:"
docker volume ls

echo ""
echo "=============================="
echo "STEP 5 - DOCKER NETWORK"
echo "=============================="

docker network create jenkins_network

echo ""
echo "Docker Networks:"
docker network ls | grep jenkins

echo ""
echo "=============================="
echo "VERIFICATION"
echo "=============================="

echo ""
echo "Java:"
java -version

echo ""
echo "AWS:"
aws --version

echo ""
echo "Docker:"
docker --version

echo ""
echo "Docker Service:"
sudo systemctl is-active docker

echo ""
echo "Jenkins Service:"
sudo systemctl is-active jenkins

echo ""
echo "Jenkins Initial Password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo ""
echo "Public IP:"
curl -s ifconfig.me

echo ""
echo "Open Jenkins:"
echo "http://<PUBLIC-IP>:8080"
