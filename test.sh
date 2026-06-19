./set.sh 
======================================
FIX JENKINS REPOSITORY
======================================
deb [signed-by=/usr/share/keyrings/jenkins-keyring.gpg] https://pkg.jenkins.io/debian-stable binary/
======================================
UPDATE PACKAGES
======================================
Hit:1 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute InRelease
Hit:2 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute-updates InRelease                       
Hit:3 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute-backports InRelease                     
Ign:4 https://pkg.jenkins.io/debian-stable binary/ InRelease                                          
Get:5 https://pkg.jenkins.io/debian-stable binary/ Release [2044 B]   
Get:6 https://pkg.jenkins.io/debian-stable binary/ Release.gpg [833 B]
Hit:7 http://security.ubuntu.com/ubuntu resolute-security InRelease
Ign:6 https://pkg.jenkins.io/debian-stable binary/ Release.gpg
Warning: OpenPGP signature verification failed: https://pkg.jenkins.io/debian-stable binary/ Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 7198F4B714ABFC68
Error: The repository 'https://pkg.jenkins.io/debian-stable binary/ Release' is not signed.
Notice: Updating from such a repository can't be done securely, and is therefore disabled by default.
Notice: See apt-secure(8) manpage for repository creation and user configuration details.
======================================
INSTALL JENKINS
======================================
Package jenkins is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source

Error: Package 'jenkins' has no installation candidate
Failed to enable unit: Unit jenkins.service does not exist
Failed to start jenkins.service: Unit jenkins.service not found.
======================================
FIX DOCKER PERMISSIONS
======================================
======================================
CREATE DOCKER VOLUME
======================================
jenkins_data
======================================
CREATE DOCKER NETWORK
======================================
Error response from daemon: network with name jenkins_network already exists
======================================
VERIFY SERVICES
======================================

JENKINS STATUS
inactive

DOCKER STATUS
active

DOCKER VOLUMES
DRIVER    VOLUME NAME
local     jenkins_data

DOCKER NETWORKS
0f04cffead58   jenkins_network   bridge    local

JENKINS PASSWORD
cat: /var/lib/jenkins/secrets/initialAdminPassword: No such file or directory

PUBLIC IP
3.137.153.32
OPEN JENKINS
http://3.137.153.32:8080
ubuntu@ip-172-31-39-80:~$ 
