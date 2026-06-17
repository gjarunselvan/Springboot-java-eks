# Get Docker group ID from host
DOCKER_GID=$(getent group docker | cut -d: -f3)

echo "Docker GID: $DOCKER_GID"

# Add Jenkins user inside container to host Docker group
sudo docker exec -u root jenkins groupadd -g $DOCKER_GID docker-host 2>/dev/null || true

sudo docker exec -u root jenkins usermod -aG $DOCKER_GID jenkins

# Restart container
sudo docker restart jenkins

# Wait a few seconds
sleep 15

# Test Docker access
sudo docker exec jenkins docker ps
