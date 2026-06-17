./setup.sh 
jenkins
jenkins
58119f48198ea6150edb98d7993f3764775ca0a4f22a5eed1c456a6d244eb6dc
Waiting 30 seconds for Jenkins...
CONTAINER ID   IMAGE                 COMMAND                  CREATED          STATUS          PORTS                                                                                          NAMES
58119f48198e   jenkins/jenkins:lts   "/usr/bin/tini -- /u…"   30 seconds ago   Up 30 seconds   0.0.0.0:8080->8080/tcp, [::]:8080->8080/tcp, 0.0.0.0:50000->50000/tcp, [::]:50000->50000/tcp   jenkins
        "HostConfig": {
            "Binds": [
                "/var/run/docker.sock:/var/run/docker.sock",
                "jenkins_data:/var/jenkins_home"
            ],
            "ContainerIDFile": "",
            "LogConfig": {
--
            },
            {
                "Type": "volume",
                "Name": "jenkins_data",
                "Source": "/var/lib/docker/volumes/jenkins_data/_data",
                "Destination": "/var/jenkins_home",
                "Driver": "local",
                "Mode": "z",
ubuntu@ip-172-31-39-221:~$ 
