#!/bin/bash

echo "===== DISK USAGE ====="
df -h

echo ""
echo "===== CLEAN APT CACHE ====="
sudo apt clean

echo ""
echo "===== REMOVE PACKAGE CACHE ====="
sudo rm -rf /var/cache/apt/archives/*

echo ""
echo "===== REMOVE TEMP FILES ====="
sudo rm -rf /tmp/*

echo ""
echo "===== REMOVE DOWNLOADED FILES ====="
rm -f ~/jenkins.deb
rm -f ~/awscliv2.zip
rm -f ~/eksctl_*.tar.gz

echo ""
echo "===== REMOVE UNUSED DOCKER DATA ====="
docker system prune -af

echo ""
echo "===== DISK USAGE AFTER CLEANUP ====="
df -h
