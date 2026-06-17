cat > jenkins-manual.sh <<'EOF'
#!/bin/bash

set -e

sudo apt update

# Java
sudo apt install -y openjdk-21-jdk wget

# Jenkins WAR
wget -O jenkins.war https://get.jenkins.io/war-stable/latest/jenkins.war

# Create jenkins user
sudo useradd -m -s /bin/bash jenkins || true

# Jenkins service
sudo tee /etc/systemd/system/jenkins.service > /dev/null <<SERVICE
[Unit]
Description=Jenkins
After=network.target

[Service]
Type=simple
User=jenkins
WorkingDirectory=/home/jenkins
ExecStart=/usr/bin/java -jar /home/jenkins/jenkins.war --httpPort=8080
Restart=always

[Install]
WantedBy=multi-user.target
SERVICE

sudo mv jenkins.war /home/jenkins/
sudo chown -R jenkins:jenkins /home/jenkins

sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl restart jenkins

sleep 20

sudo systemctl status jenkins --no-pager
EOF
