sudo docker stop jenkins
sudo docker rm jenkins 

sudo docker run -d \
--name jenkins \
--restart unless-stopped \
-p 8080:8080 \
-p 50000:50000 \
-v jenkins_home:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
--network jenkins_network \
jenkins/jenkins:lts
