#!/bin/sh

#here I assume that docoker is already installed, up and rurnning

docker pull portainer/portainer-ce
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 -p 9000:9000 --name portainer -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

#download other required images
docker pull postgres:latest
docker pull prom/prometheus
docker pull grafana/grafana:latest
docker pull bitnami/alertmanager:latest
docker pull bitnami/postgres-exporter
docker pull mailhog/mailhog:v1.0.1