echo "===== INSTALL STATE ====="
sudo docker exec jenkins cat /var/jenkins_home/config.xml | grep -i install

echo ""
echo "===== UPGRADE WIZARD STATE ====="
sudo docker exec jenkins cat /var/jenkins_home/jenkins.install.UpgradeWizard.state

echo ""
echo "===== LAST EXEC VERSION ====="
sudo docker exec jenkins cat /var/jenkins_home/jenkins.install.InstallUtil.lastExecVersion

echo ""
echo "===== INITIAL ADMIN PASSWORD ====="
sudo docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

echo ""
echo "===== JOBS ====="
sudo docker exec jenkins ls -la /var/jenkins_home/jobs

echo ""
echo "===== USERS ====="
sudo docker exec jenkins ls -la /var/jenkins_home/users

echo ""
echo "===== CREDENTIAL FILE ====="
sudo docker exec jenkins ls -l /var/jenkins_home/credentials.xml
