DOCKER_GID=$(stat -c '%g' /var/run/docker.sock)

echo "Docker Socket GID: $DOCKER_GID"

sudo docker exec -u root jenkins groupadd -g $DOCKER_GID dockerhost 2>/dev/null || true

sudo docker exec -u root jenkins usermod -aG dockerhost jenkins

sudo docker restart jenkins

echo "Waiting for Jenkins..."
sleep 20

echo "Jenkins User:"
sudo docker exec jenkins id

echo "Testing Docker Access:"
sudo docker exec jenkins docker ps
