#!/bin/bash

echo "===== JENKINS PACKAGE ====="
dpkg -l | grep jenkins

echo ""
echo "===== JENKINS SERVICE ====="
sudo systemctl status jenkins --no-pager | head -20

echo ""
echo "===== JENKINS WAR ====="
ls -lh /usr/share/jenkins/jenkins.war

echo ""
echo "===== JENKINS VERSION ====="
java -jar /usr/share/jenkins/jenkins.war --version

echo ""
echo "===== JAVA ====="
java -version
