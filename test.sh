sudo docker inspect jenkins | grep docker.sock
                "/var/run/docker.sock:/var/run/docker.sock"
                "Source": "/var/run/docker.sock",
                "Destination": "/var/run/docker.sock",
ubuntu@ip-172-31-39-221:~$ sudo docker exec -it jenkins sh -c "docker --version"
sh: 1: docker: not found
ubuntu@ip-172-31-39-221:~$ ^C
ubuntu@ip-172-31-39-221:~$ 
