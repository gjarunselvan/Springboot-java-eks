#!/bin/bash

echo "Stopping Jenkins..."
sudo systemctl stop jenkins

echo "Backing up old Jenkins data..."
sudo mv /var/lib/jenkins /var/lib/jenkins_backup_$(date +%s)

echo "Creating fresh Jenkins home..."
sudo mkdir -p /var/lib/jenkins

sudo chown -R jenkins:jenkins /var/lib/jenkins

echo "Starting Jenkins..."
sudo systemctl start jenkins

sleep 20

echo ""
echo "New Jenkins Password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo ""
echo "Jenkins URL:"
echo "http://$(curl -s ifconfig.me):8080"
