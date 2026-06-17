./setup.sh 
Docker Socket GID: 986
jenkins
Waiting for Jenkins...
Jenkins User:
uid=1000(jenkins) gid=1000(jenkins) groups=1000(jenkins),986(dockerhost)
Testing Docker Access:
CONTAINER ID   IMAGE                 COMMAND                  CREATED         STATUS          PORTS                                                                                      NAMES
a06178967cf0   jenkins/jenkins:lts   "/usr/bin/tini -- /u…"   9 minutes ago   Up 20 seconds   0.0.0.0:8080->8080/tcp, :::8080->8080/tcp, 0.0.0.0:50000->50000/tcp, :::50000->50000/tcp   jenkins
ubuntu@ip-172-31-39-221:~$ ^C
ubuntu@ip-172-31-39-221:~$ 
