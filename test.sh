ubuntu@ip-172-31-39-80:~$ #!/bin/bash

echo "===== STOP JENKINS ====="
sudo systemctl stop jenkins

echo "===== CLEAN TEMP FILES ====="
sudo rm -rf /tmp/*

echo "===== CLEAN APT CACHE ====="
sudo apt clean

echo "===== CLEAN DOCKER ====="
docker system prune -af || true

echo "===== DOWNLOAD LATEST JENKINS ====="
sudo wget -O /usr/share/jenkins/jenkins.war \
https://get.jenkins.io/war-stable/latest/jenkins.war

echo "===== START JENKINS ====="
sudo systemctl start jenkins

echo "===== WAITING 30 SECONDS ====="
sleep 30

echo "===== RECREATE NETWORK ====="
docker network create jenkins_network 2>/dev/null || true

echo ""
echo "===== DISK ====="
df -h

echo ""
echo "===== JENKINS STATUS ====="
sudo systemctl is-active jenkins

echo ""
echo "===== JENKINS VERSION ====="
java -jar /usr/share/jenkins/jenkins.war --version

echo ""
echo "===== DOCKER NETWORK ====="
docker network ls | grep jenkins

echo ""
echo "===== DOCKER VOLUME ====="
docker volume ls | grep jenkins

echo ""
echo "===== URL ====="
echo "http://$(curl -s ifconfig.me):8080"
===== STOP JENKINS =====
===== CLEAN TEMP FILES =====
===== CLEAN APT CACHE =====
===== CLEAN DOCKER =====
Total reclaimed space: 0B
===== DOWNLOAD LATEST JENKINS =====
--2026-06-19 10:47:16--  https://get.jenkins.io/war-stable/latest/jenkins.war
Resolving get.jenkins.io (get.jenkins.io)... 128.24.70.119, 2603:1030:408:3::2bd
Connecting to get.jenkins.io (get.jenkins.io)|128.24.70.119|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://ftp-nyc.osuosl.org/pub/jenkins/war-stable/2.555.3/jenkins.war [following]
--2026-06-19 10:47:16--  https://ftp-nyc.osuosl.org/pub/jenkins/war-stable/2.555.3/jenkins.war
Resolving ftp-nyc.osuosl.org (ftp-nyc.osuosl.org)... 64.50.233.100, 2600:3404:200:237::2
Connecting to ftp-nyc.osuosl.org (ftp-nyc.osuosl.org)|64.50.233.100|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 99983837 (95M) [application/x-java-archive]
Saving to: ‘/usr/share/jenkins/jenkins.war’

/usr/share/jenkins/jenkins.war  100%[=====================================================>]  95.35M  82.6MB/s    in 1.2s    

2026-06-19 10:47:17 (82.6 MB/s) - ‘/usr/share/jenkins/jenkins.war’ saved [99983837/99983837]

===== START JENKINS =====
===== WAITING 30 SECONDS =====
===== RECREATE NETWORK =====
04402a293373b8684df237931f7623423727bf254fcbedb4c0773339f5db219c

===== DISK =====
Filesystem       Size  Used Avail Use% Mounted on
/dev/root        6.7G  4.3G  2.4G  65% /
tmpfs            953M     0  953M   0% /dev/shm
tmpfs            382M  960K  381M   1% /run
efivarfs         128K  3.1K  120K   3% /sys/firmware/efi/efivars
tmpfs            953M  4.5M  949M   1% /tmp
/dev/nvme0n1p13  989M   96M  827M  11% /boot
/dev/nvme0n1p15  105M  6.3M   99M   7% /boot/efi
none             1.0M     0  1.0M   0% /run/credentials/serial-getty@ttyS0.service
none             1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
tmpfs            191M  8.0K  191M   1% /run/user/1000
none             1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
none             1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
none             1.0M     0  1.0M   0% /run/credentials/systemd-networkd.service

===== JENKINS STATUS =====
active

===== JENKINS VERSION =====
Running with Java 17 from /usr/lib/jvm/java-17-openjdk-amd64, which is older than the minimum required version (Java 21).
Supported Java versions are: [21, 25]
See https://jenkins.io/redirect/java-support/ for more information.

===== DOCKER NETWORK =====
04402a293373   jenkins_network   bridge    local

===== DOCKER VOLUME =====
local     jenkins_data

===== URL =====
http://3.137.153.32:8080
ubuntu@ip-172-31-39-80:~$ 
