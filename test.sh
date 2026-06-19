sudo systemctl stop jenkins

wget -O /tmp/jenkins.war https://get.jenkins.io/war-stable/latest/jenkins.war

sudo cp /tmp/jenkins.war /usr/share/jenkins/jenkins.war

sudo systemctl start jenkins

sleep 30

sudo systemctl status jenkins --no-pager
