#!/bin/bash
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

docker pull <your_aws_account_id>.dkr.ecr.ap-south-1.amazonaws.com/strapi-task6-repo:latest
docker run -d -p 80:1337 <your_aws_account_id>.dkr.ecr.ap-south-1.amazonaws.com/strapi-task6-repo:latest

