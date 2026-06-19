p-172-31-39-80:~$ #!/bin/bash

echo "===== JENKINS PACKAGE ====="
dpkg -l | grep jenkins

echo ""
echo "===== JENKINS SERVICE ====="
sudo systemctl status jenkins --no-pager | head -20

echo ""
echo "===== JENKINS WAR ====="
ls -lh /usr/share/jenkins/jenkins.war

echo ""
echo "===== JENKINS VERSION ====="
java -jar /usr/share/jenkins/jenkins.war --version

echo ""
echo "===== JAVA ====="
java -version
===== JENKINS PACKAGE =====
ii  jenkins                               2.516.1                                    all          Jenkins is the leading open source automation server supported by a large and growing community of developers, testers, designers and other people interested in continuous integration, continuous delivery and modern software delivery practices. Built on the Java Virtual Machine (JVM), it provides more than 2,000 plugins that extend Jenkins to automate with practically any technology software delivery teams use. In 2022, Jenkins reached 300,000 known installations making it the most widely deployed automation server.

===== JENKINS SERVICE =====
● jenkins.service - Jenkins Continuous Integration Server
     Loaded: loaded (/usr/lib/systemd/system/jenkins.service; enabled; preset: enabled)
     Active: active (running) since Fri 2026-06-19 10:49:34 UTC; 12s ago
 Invocation: 00a20173a9034246a51a5dc27813d7d7
   Main PID: 17025 (java)
      Tasks: 52 (limit: 1741)
     Memory: 215.6M (peak: 216.9M)
        CPU: 11.311s
     CGroup: /system.slice/jenkins.service
             └─17025 /usr/bin/java -Djava.awt.headless=true -jar /usr/share/java/jenkins.war --webroot=/var/cache/jenkins/war --httpPort=8080

Jun 19 10:49:33 ip-172-31-39-80 jenkins[17025]: 2026-06-19 10:49:33.204+0000 [id=29]        INFO        jenkins.InitReactorRunner$1#onAttained: Started all plugins
Jun 19 10:49:33 ip-172-31-39-80 jenkins[17025]: 2026-06-19 10:49:33.208+0000 [id=31]        INFO        jenkins.InitReactorRunner$1#onAttained: Augmented all extensions
Jun 19 10:49:33 ip-172-31-39-80 jenkins[17025]: 2026-06-19 10:49:33.655+0000 [id=31]        INFO        jenkins.InitReactorRunner$1#onAttained: System config loaded
Jun 19 10:49:33 ip-172-31-39-80 jenkins[17025]: 2026-06-19 10:49:33.655+0000 [id=32]        INFO        jenkins.InitReactorRunner$1#onAttained: System config adapted
Jun 19 10:49:33 ip-172-31-39-80 jenkins[17025]: 2026-06-19 10:49:33.656+0000 [id=32]        INFO        jenkins.InitReactorRunner$1#onAttained: Loaded all jobs
Jun 19 10:49:33 ip-172-31-39-80 jenkins[17025]: 2026-06-19 10:49:33.658+0000 [id=32]        INFO        jenkins.InitReactorRunner$1#onAttained: Configuration for all jobs updated
Jun 19 10:49:34 ip-172-31-39-80 jenkins[17025]: 2026-06-19 10:49:34.004+0000 [id=31]        INFO        jenkins.InitReactorRunner$1#onAttained: Completed initialization
Jun 19 10:49:34 ip-172-31-39-80 jenkins[17025]: 2026-06-19 10:49:34.032+0000 [id=23]        INFO        hudson.lifecycle.Lifecycle#onReady: Jenkins is fully up and running
Jun 19 10:49:34 ip-172-31-39-80 systemd[1]: Started jenkins.service - Jenkins Continuous Integration Server.

===== JENKINS WAR =====
-rw-r--r-- 1 root root 96M Jun  9 07:14 /usr/share/jenkins/jenkins.war

===== JENKINS VERSION =====
Running with Java 17 from /usr/lib/jvm/java-17-openjdk-amd64, which is older than the minimum required version (Java 21).
Supported Java versions are: [21, 25]
See https://jenkins.io/redirect/java-support/ for more information.

===== JAVA =====
openjdk version "17.0.19" 2026-04-21
OpenJDK Runtime Environment (build 17.0.19+10-1-26.04.2-Ubuntu)
OpenJDK 64-Bit Server VM (build 17.0.19+10-1-26.04.2-Ubuntu, mixed mode, sharing)
ubuntu@ip-172-31-39-80:~$ 
