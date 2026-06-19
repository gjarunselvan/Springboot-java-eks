#!/bin/bash

echo "======================================"
echo "STEP 1 - EC2 HOSTNAME"
echo "======================================"
hostname

echo ""
echo "======================================"
echo "STEP 2 - JAVA"
echo "======================================"
java -version

echo ""
echo "======================================"
echo "STEP 3 - AWS CLI"
echo "======================================"
aws --version

echo ""
echo "======================================"
echo "STEP 4 - AWS IAM AUTHENTICATOR"
echo "======================================"
aws-iam-authenticator version

echo ""
echo "======================================"
echo "STEP 5 - DOCKER"
echo "======================================"
docker --version

echo ""
echo "Docker Service:"
sudo systemctl is-active docker

echo ""
echo "======================================"
echo "STEP 6 - JENKINS"
echo "======================================"
sudo systemctl is-active jenkins

echo ""
echo "Jenkins Port:"
sudo ss -tulpn | grep 8080

echo ""
echo "======================================"
echo "STEP 7 - DOCKER VOLUME"
echo "======================================"
docker volume ls | grep jenkins_data

echo ""
echo "======================================"
echo "STEP 8 - DOCKER NETWORK"
echo "======================================"
docker network ls | grep jenkins_network

echo ""
echo "======================================"
echo "STEP 9 - KUBECTL"
echo "======================================"
kubectl version --client 2>/dev/null || echo "kubectl NOT installed"

echo ""
echo "======================================"
echo "STEP 10 - EKSCTL"
echo "======================================"
eksctl version 2>/dev/null || echo "eksctl NOT installed"

echo ""
echo "======================================"
echo "SUMMARY"
echo "======================================"

echo "Public IP: $(curl -s ifconfig.me)"

echo "Jenkins URL:"
echo "http://$(curl -s ifconfig.me):8080"
