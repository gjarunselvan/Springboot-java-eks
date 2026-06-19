ubuntu@ip-172-31-39-80:~$ ./set.sh 
===== DISK USAGE =====
Filesystem       Size  Used Avail Use% Mounted on
/dev/root        6.7G  4.6G  2.1G  70% /
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

===== CLEAN APT CACHE =====

===== REMOVE PACKAGE CACHE =====

===== REMOVE TEMP FILES =====

===== REMOVE DOWNLOADED FILES =====

===== REMOVE UNUSED DOCKER DATA =====
Deleted Networks:
jenkins_network

Total reclaimed space: 0B

===== DISK USAGE AFTER CLEANUP =====
Filesystem       Size  Used Avail Use% Mounted on
/dev/root        6.7G  4.3G  2.3G  66% /
tmpfs            953M     0  953M   0% /dev/shm
tmpfs            382M  952K  381M   1% /run
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
ubuntu@ip-172-31-39-80:~$ 
