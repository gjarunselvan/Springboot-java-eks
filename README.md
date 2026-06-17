cat > repair.sh <<'EOF'
#!/bin/bash

set -e

echo "===== System Info ====="
cat /etc/os-release

echo "===== Java ====="
java -version || true

echo "===== AWS CLI ====="
aws --version || true

echo "===== Docker ====="
docker --version || true

echo "===== Cleaning Broken Jenkins Config ====="
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /usr/share/keyrings/jenkins-keyring.gpg
sudo rm -f /etc/apt/keyrings/jenkins.asc

echo "===== Installing Prerequisites ====="
sudo apt-get update
sudo apt-get install -y curl wget gnupg ca-certificates software-properties-common

echo "===== Adding Jenkins Repository ====="
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | \
sudo tee /etc/apt/keyrings/jenkins.asc > /dev/null

echo "deb [signed-by=/etc/apt/keyrings/jenkins.asc] https://pkg.jenkins.io/debian-stable binary/" | \
sudo tee /etc/apt/sources.list.d/jenkins.list

echo "===== Repository File ====="
cat /etc/apt/sources.list.d/jenkins.list

echo "===== Updating ====="
sudo apt-get update || true

echo "===== Jenkins Policy ====="
apt-cache policy jenkins || true

echo "===== Done ====="
EOF
