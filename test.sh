echo "===== JOBS ====="
sudo docker exec jenkins ls -la /var/jenkins_home/jobs

echo ""
echo "===== SECRETS ====="
sudo docker exec jenkins ls -la /var/jenkins_home/secrets

echo ""
echo "===== USERS ====="
sudo docker exec jenkins ls -la /var/jenkins_home/users

echo ""
echo "===== RESTARTING JENKINS ====="
sudo docker restart jenkins

echo ""
echo "Waiting 30 seconds..."
sleep 30

echo ""
echo "===== LAST 100 LOG LINES ====="
sudo docker logs --tail 100 jenkins
