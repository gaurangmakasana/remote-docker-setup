#!/bin/bash


apt update
curl https://get.docker.com | sh
add usermod -aG docker cloud_user