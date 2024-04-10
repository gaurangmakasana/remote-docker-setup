# remote-docker-setup
Repo to store script for Docker installation on remote machine

1. Run below command to generate rsa public/private key for password less login from your windows machine

ssh-keygen -t rsa -f <filepath\filename> -C user -b 2048
i.e
ssh-keygen -t rsa -f c:\test\cloud -b 2048 

1.a -- Install docker rootless
curl -ssl https://get.docker.com/rootless | sh

2. Docker Protainer Installation command
https://docs.portainer.io/start/install-ce/server/docker/linux
- sudo docker pull portainer/portainer-ce
- sudo docker volume create portainer_data
- sudo docker run -d -p 8000:8000 -p 9443:9443 -p 9000:9000 --name portainer -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

3. check open port on linux 
netstat -lntu

4. Docker command
sudo docker rm -f portainer
sudo docker logs
sudo docker ps
sudo docker image ls
sudo docker container ls

sudo docker restart $(docker ps -a -q)
sudo docker restart <container ID/Container Name>
https://www.warp.dev/terminus/docker-restart-container#:~:text=The%20short%20answer,%24%20docker%20restart

docker logs --follow <container ID/Container Name>
https://www.papertrail.com/solution/tips/how-to-live-tail-docker-logs/

5. Launch Portainer using 
http://localhost:9000

6. create admin user in portainer

7. linux ssh tunneling/port forwarding 
https://phoenixnap.com/kb/ssh-port-forwarding

8. bypass sudo
sudo su
source .bashrc

https://askubuntu.com/questions/458882/bypass-sudo-for-a-group-of-commands

9. Git Clone
https://github.com/gaurangmakasana/spring-grafana-prometheus.git

10. install jdk
apt installopenjdk-19-jdk-headless

11. docker compose -d up
12. docker compose -f docker/monitoring.yml up