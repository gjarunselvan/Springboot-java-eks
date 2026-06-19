ubuntu@ip-172-31-39-80:~$ ./set.sh 
==============================
STEP 3.4 - AWS IAM AUTHENTICATOR
==============================
  % Total    % Received % Xferd  Average Speed  Time    Time    Time   Current
                                 Dload  Upload  Total   Spent   Left   Speed
100 59.64M 100 59.64M   0      0 32.41M      0   00:01   00:01         21.81M

AWS IAM Authenticator:
{"Version":"v0.6.29","Commit":"8769c8f063f072830ccd737d29a049a5a4609571"}

==============================
STEP 3.5 - DOCKER
==============================
Hit:1 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute InRelease
Hit:2 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute-updates InRelease
Hit:3 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute-backports InRelease
Hit:4 http://security.ubuntu.com/ubuntu resolute-security InRelease
1 package can be upgraded. Run 'apt list --upgradable' to see it.
Installing:                     
  docker.io

Installing dependencies:
  bridge-utils  containerd  dns-root-data  dnsmasq-base  pigz  runc  ubuntu-fan

Suggested packages:
  ifupdown    cgroupfs-mount  debootstrap    docker-compose-v2  rinse        zfs-fuse
  aufs-tools  | cgroup-lite   docker-buildx  docker-doc         rootlesskit  | zfsutils

Summary:
  Upgrading: 0, Installing: 8, Removing: 0, Not Upgrading: 1
  Download size: 74.0 MB
  Space needed: 281 MB / 3382 MB available

Get:1 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute/universe amd64v3 pigz amd64 2.8-1build1 [68.5 kB]
Get:2 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute/main amd64v3 bridge-utils amd64 1.7.1-4ubuntu3 [34.8 kB]
Get:3 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute/main amd64v3 runc amd64 1.4.0-0ubuntu1 [9829 kB]
Get:4 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute/main amd64v3 containerd amd64 2.2.2-0ubuntu1 [28.0 MB]
Get:5 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute/main amd64v3 dns-root-data all 2025080400build1 [6022 B]
Get:6 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute-updates/main amd64v3 dnsmasq-base amd64 2.92-1ubuntu0.3 [441 kB]
Get:7 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute-updates/universe amd64v3 docker.io amd64 29.1.3-0ubuntu4.1 [35.5 MB]
Get:8 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute/universe amd64v3 ubuntu-fan all 0.12.17 [34.3 kB]
Fetched 74.0 MB in 1s (82.1 MB/s)     
Preconfiguring packages ...
Selecting previously unselected package pigz.
(Reading database ... 98592 files and directories currently installed.)
Preparing to unpack .../0-pigz_2.8-1build1_amd64v3.deb ...
Unpacking pigz (2.8-1build1) ...
Selecting previously unselected package bridge-utils.
Preparing to unpack .../1-bridge-utils_1.7.1-4ubuntu3_amd64v3.deb ...
Unpacking bridge-utils (1.7.1-4ubuntu3) ...
Selecting previously unselected package runc.
Preparing to unpack .../2-runc_1.4.0-0ubuntu1_amd64v3.deb ...
Unpacking runc (1.4.0-0ubuntu1) ...
Selecting previously unselected package containerd.
Preparing to unpack .../3-containerd_2.2.2-0ubuntu1_amd64v3.deb ...
Unpacking containerd (2.2.2-0ubuntu1) ...
Selecting previously unselected package dns-root-data.
Preparing to unpack .../4-dns-root-data_2025080400build1_all.deb ...
Unpacking dns-root-data (2025080400build1) ...
Selecting previously unselected package dnsmasq-base.
Preparing to unpack .../5-dnsmasq-base_2.92-1ubuntu0.3_amd64v3.deb ...
Unpacking dnsmasq-base (2.92-1ubuntu0.3) ...
Selecting previously unselected package docker.io.
Preparing to unpack .../6-docker.io_29.1.3-0ubuntu4.1_amd64v3.deb ...
Unpacking docker.io (29.1.3-0ubuntu4.1) ...
Selecting previously unselected package ubuntu-fan.
Preparing to unpack .../7-ubuntu-fan_0.12.17_all.deb ...
Unpacking ubuntu-fan (0.12.17) ...
Setting up dnsmasq-base (2.92-1ubuntu0.3) ...
Setting up runc (1.4.0-0ubuntu1) ...
Setting up dns-root-data (2025080400build1) ...
Setting up bridge-utils (1.7.1-4ubuntu3) ...
Setting up pigz (2.8-1build1) ...
Setting up containerd (2.2.2-0ubuntu1) ...
Created symlink '/etc/systemd/system/multi-user.target.wants/containerd.service' → '/usr/lib/systemd/system/containerd.service
'.
Setting up ubuntu-fan (0.12.17) ...
Created symlink '/etc/systemd/system/multi-user.target.wants/ubuntu-fan.service' → '/usr/lib/systemd/system/ubuntu-fan.service
'.
Setting up docker.io (29.1.3-0ubuntu4.1) ...
Created symlink '/etc/systemd/system/multi-user.target.wants/docker.service' → '/usr/lib/systemd/system/docker.service'.
Created symlink '/etc/systemd/system/sockets.target.wants/docker.socket' → '/usr/lib/systemd/system/docker.socket'.
Processing triggers for dbus (1.16.2-2ubuntu4) ...
Processing triggers for man-db (2.13.1-1build1) ...
Scanning processes...                                                                                                         
Scanning candidates...                                                                                                        
Scanning linux images...                                                                                                      

Running kernel seems to be up-to-date.

Restarting services...

Service restarts being deferred:
 systemctl restart networkd-dispatcher.service
 systemctl restart systemd-logind.service
 systemctl restart unattended-upgrades.service

No containers need to be restarted.

User sessions running outdated binaries:
 ubuntu @ session #3: sshd-session[1616]
 ubuntu @ session #5: sshd-session[2030]
 ubuntu @ user manager: (sd-pam)[1921]

No VM guests are running outdated hypervisor (qemu) binaries on this host.

Docker Version:
Docker version 29.1.3, build 29.1.3-0ubuntu4.1

Docker Status:
active

==============================
STEP 3.6 - JENKINS
==============================
Hit:1 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute InRelease
Hit:2 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute-updates InRelease
Hit:3 http://us-east-2.ec2.archive.ubuntu.com/ubuntu resolute-backports InRelease
Hit:4 http://security.ubuntu.com/ubuntu resolute-security InRelease   
Ign:5 https://pkg.jenkins.io/debian-stable binary/ InRelease          
Get:6 https://pkg.jenkins.io/debian-stable binary/ Release [2044 B]
Get:7 https://pkg.jenkins.io/debian-stable binary/ Release.gpg [833 B]
Ign:7 https://pkg.jenkins.io/debian-stable binary/ Release.gpg
Warning: OpenPGP signature verification failed: https://pkg.jenkins.io/debian-stable binary/ Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 7198F4B714ABFC68
Error: The repository 'https://pkg.jenkins.io/debian-stable binary/ Release' is not signed.
Notice: Updating from such a repository can't be done securely, and is therefore disabled by default.
Notice: See apt-secure(8) manpage for repository creation and user configuration details.
Package jenkins is not available, but is referred to by another package.
This may mean that the package is missing, has been obsoleted, or
is only available from another source

Error: Package 'jenkins' has no installation candidate
Failed to enable unit: Unit jenkins.service does not exist
Failed to start jenkins.service: Unit jenkins.service not found.

Jenkins Status:
inactive

==============================
STEP 4 - DOCKER VOLUME
==============================
permission denied while trying to connect to the docker API at unix:///var/run/docker.sock

Docker Volumes:
permission denied while trying to connect to the docker API at unix:///var/run/docker.sock

==============================
STEP 5 - DOCKER NETWORK
==============================
permission denied while trying to connect to the docker API at unix:///var/run/docker.sock

Docker Networks:
permission denied while trying to connect to the docker API at unix:///var/run/docker.sock

==============================
VERIFICATION
==============================

Java:
openjdk version "17.0.19" 2026-04-21
OpenJDK Runtime Environment (build 17.0.19+10-1-26.04.2-Ubuntu)
OpenJDK 64-Bit Server VM (build 17.0.19+10-1-26.04.2-Ubuntu, mixed mode, sharing)

AWS:
aws-cli/2.35.8 Python/3.14.5 Linux/7.0.0-1006-aws exe/x86_64.ubuntu.26

Docker:
Docker version 29.1.3, build 29.1.3-0ubuntu4.1

Docker Service:
active

Jenkins Service:
inactive

Jenkins Initial Password:
cat: /var/lib/jenkins/secrets/initialAdminPassword: No such file or directory

Public IP:
3.137.153.32
Open Jenkins:
http://<PUBLIC-IP>:8080
ubuntu@ip-172-31-39-80:~$ ^C
ubuntu@ip-172-31-39-80:~$ 
