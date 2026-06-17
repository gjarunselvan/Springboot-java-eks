sudo docker exec jenkins docker --version
Docker version 26.1.5+dfsg1, build a72d7cd
ubuntu@ip-172-31-39-221:~$ sudo docker exec jenkins docker ps
permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.45/containers/json": dial unix /var/run/docker.sock: connect: permission denied
ubuntu@ip-172-31-39-221:~$ 
