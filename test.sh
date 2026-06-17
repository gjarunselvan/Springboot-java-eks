# Install Docker CLI inside Jenkins container

sudo docker exec -u root jenkins bash -c '
apt-get update &&
apt-get install -y docker.io
'

# Verify Docker is available inside Jenkins
sudo docker exec jenkins docker --version

# Verify Jenkins can talk to host Docker
sudo docker exec jenkins docker ps
