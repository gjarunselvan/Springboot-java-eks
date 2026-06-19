ubuntu@ip-172-31-39-80:~$ ./set.sh 
======================================
INSTALL JENKINS MANUALLY
======================================
--2026-06-19 10:04:35--  https://pkg.jenkins.io/debian-stable/binary/jenkins_2.516.1_all.deb
Resolving pkg.jenkins.io (pkg.jenkins.io)... 146.75.78.133, 2a04:4e42:83::645
Connecting to pkg.jenkins.io (pkg.jenkins.io)|146.75.78.133|:443... connected.
HTTP request sent, awaiting response... 302 Moved Temporarily
Location: https://get.jenkins.io/debian-stable/jenkins_2.516.1_all.deb [following]
--2026-06-19 10:04:35--  https://get.jenkins.io/debian-stable/jenkins_2.516.1_all.deb
Resolving get.jenkins.io (get.jenkins.io)... 128.24.70.119, 2603:1030:408:3::2bd
Connecting to get.jenkins.io (get.jenkins.io)|128.24.70.119|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://mirror.xmission.com/jenkins/debian-stable/jenkins_2.516.1_all.deb [following]
--2026-06-19 10:04:35--  https://mirror.xmission.com/jenkins/debian-stable/jenkins_2.516.1_all.deb
Resolving mirror.xmission.com (mirror.xmission.com)... 198.60.22.13, 2607:fa18:0:3::13
Connecting to mirror.xmission.com (mirror.xmission.com)|198.60.22.13|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 87069540 (83M) [application/octet-stream]
Saving to: ‘jenkins.deb’

jenkins.deb                     100%[=====================================================>]  83.04M   107MB/s    in 0.8s    

2026-06-19 10:04:36 (107 MB/s) - ‘jenkins.deb’ saved [87069540/87069540]

Hit:1 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute InRelease
Hit:2 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute-updates InRelease
Hit:3 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute-backports InRelease
Ign:4 https://pkg.jenkins.io/debian-stable binary/ InRelease           
Hit:5 http://security.ubuntu.com/ubuntu resolute-security InRelease   
Get:6 https://pkg.jenkins.io/debian-stable binary/ Release [2044 B]
Get:7 https://pkg.jenkins.io/debian-stable binary/ Release.gpg [833 B]
Ign:7 https://pkg.jenkins.io/debian-stable binary/ Release.gpg
Warning: OpenPGP signature verification failed: https://pkg.jenkins.io/debian-stable binary/ Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 7198F4B714ABFC68
Error: The repository 'https://pkg.jenkins.io/debian-stable binary/ Release' is not signed.
Notice: Updating from such a repository can't be done securely, and is therefore disabled by default.
Notice: See apt-secure(8) manpage for repository creation and user configuration details.
fontconfig is already the newest version (2.17.1-3ubuntu1).
fontconfig set to manually installed.
openjdk-17-jre is already the newest version (17.0.19+10-1~26.04.2).
openjdk-17-jre set to manually installed.
Summary:                    
  Upgrading: 0, Installing: 0, Removing: 0, Not Upgrading: 1
Selecting previously unselected package jenkins.
(Reading database ... 98969 files and directories currently installed.)
Preparing to unpack jenkins.deb ...
Unpacking jenkins (2.516.1) ...
dpkg: dependency problems prevent configuration of jenkins:
 jenkins depends on net-tools; however:
  Package net-tools is not installed.

dpkg: error processing package jenkins (--install):
 dependency problems - leaving unconfigured
Errors were encountered while processing:
 jenkins
Correcting dependencies... Done 
Installing dependencies:    
  net-tools

Summary:
  Upgrading: 0, Installing: 1, Removing: 0, Not Upgrading: 1
  1 not fully installed or removed.
  Download size: 152 kB
  Space needed: 680 kB / 2924 MB available

Get:1 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute/main amd64v3 net-tools amd64 2.10-2ubuntu1 [152 kB]
Fetched 152 kB in 0s (6593 kB/s) 
Selecting previously unselected package net-tools.
(Reading database ... 98984 files and directories currently installed.)
Preparing to unpack .../net-tools_2.10-2ubuntu1_amd64v3.deb ...
Unpacking net-tools (2.10-2ubuntu1) ...
Setting up net-tools (2.10-2ubuntu1) ...
Setting up jenkins (2.516.1) ...
Created symlink '/etc/systemd/system/multi-user.target.wants/jenkins.service' → '/usr/lib/systemd/system/jenkins.service'.
Processing triggers for man-db (2.13.1-1build1) ...
needrestart is being skipped since dpkg has failed
Synchronizing state of jenkins.service with SysV service script with /usr/lib/systemd/systemd-sysv-install.
Executing: /usr/lib/systemd/systemd-sysv-install enable jenkins

======================================
VERIFY
======================================
Jenkins Status:
active

Jenkins Password:
9169525586d44fc8b5653fa5b72df1d4

Listening Port:
tcp   LISTEN 0      50                     *:8080             *:*    users:(("java",pid=13420,fd=8))                        

Public URL:
http://3.137.153.32:8080
ubuntu@ip-172-31-39-80:~$ ^C
ubuntu@ip-172-31-39-80:~$ 
