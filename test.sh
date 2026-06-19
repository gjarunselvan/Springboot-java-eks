sudo systemctl stop jenkins

sudo rm -rf /var/lib/jenkins/plugins/*

sudo systemctl start jenkins

sleep 30

sudo systemctl status jenkins
