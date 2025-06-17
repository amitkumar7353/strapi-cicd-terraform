#!/bin/bash
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

docker pull 565827786815.dkr.ecr.ap-south-1.amazonaws.com/strapi-cicd-terraform:latest
docker run -d -p 80:1337 565827786815.dkr.ecr.ap-south-1.amazonaws.com/strapi-cicd-terraform:latest

