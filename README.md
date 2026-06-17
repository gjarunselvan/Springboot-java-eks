cat > fix-jenkins.sh <<'EOF'
#!/bin/bash

set -e

echo "===== Installing prerequisites ====="
sudo apt-get update -y
sudo apt-get install -y curl gnupg ca-certificates

echo "===== Removing old Jenkins repo ====="
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /usr/share/keyrings/jenkins-keyring.gpg

echo "===== Adding Jenkins key ====="
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/jenkins-keyring.gpg >/dev/null

echo "===== Adding Jenkins repository ====="
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.gpg] https://pkg.jenkins.io/debian-stable binary/" | \
sudo tee /etc/apt/sources.list.d/jenkins.list

echo "===== Updating repositories ====="
sudo apt-get update -y

echo "===== Installing Jenkins ====="
sudo apt-get install -y jenkins

echo "===== Starting Jenkins ====="
sudo systemctl enable jenkins
sudo systemctl restart jenkins

echo "===== Jenkins Status ====="
sudo systemctl status jenkins --no-pager

echo "===== Jenkins Password ====="
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo "===== Public IP ====="
curl -s ifconfig.me
echo
echo "Open: http://$(curl -s ifconfig.me):8080"
EOF
