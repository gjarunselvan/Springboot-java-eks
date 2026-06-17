ubuntu@ip-172-31-39-221:~$ sudo docker inspect jenkins |grep -i jenkins
            "/usr/local/bin/jenkins.sh"
        "Name": "/jenkins",
                "Destination": "/var/jenkins_home",
            "User": "jenkins",
                "JENKINS_HOME=/var/jenkins_home",
                "JENKINS_SLAVE_AGENT_PORT=50000",
                "REF=/usr/share/jenkins/ref",
                "JENKINS_UC=https://updates.jenkins.io",
                "JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental",
                "JENKINS_INCREMENTALS_REPO_MIRROR=https://repo.jenkins-ci.org/incrementals",
                "COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log",
                "JENKINS_VERSION=2.555.3"
            "Image": "jenkins/jenkins:lts",
                "/var/jenkins_home": {}
                "/usr/local/bin/jenkins.sh"
                "org.opencontainers.image.description": "The Jenkins Continuous Integration and Delivery server",
                "org.opencontainers.image.source": "https://github.com/jenkinsci/docker",
                "org.opencontainers.image.title": "Official Jenkins Docker image",
                "org.opencontainers.image.url": "https://www.jenkins.io/",
                "org.opencontainers.image.vendor": "Jenkins project",
