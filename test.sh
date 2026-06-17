# Stop current Jenkins
sudo docker stop jenkins
sudo docker rm jenkins

# Start Jenkins using the original volume
sudo docker run -d \
--name jenkins \
--restart unless-stopped \
-p 8080:8080 \
-p 50000:50000 \
-v jenkins_data:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
--network jenkins_network \
jenkins/jenkins:lts

# Wait for startup
echo "Waiting 30 seconds for Jenkins..."
sleep 30

# Verify container
sudo docker ps

# Verify mounted volume
sudo docker inspect jenkins | grep -A3 -B3 jenkins_data
