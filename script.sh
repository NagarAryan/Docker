#!/bin/bash
yum update
yum install -y docker
usermod -a -G docker ec2-user
systemctl start docker.service
docker pull <dockerfile-url>
docker build -t <image-name> .
docker run -it <image-name>~