sudo su
yum install -y docker
usermod -a -G docker ec2-user
systemctl start docker.service
docker build -t testapache . --build-arg PORT=80
docker run -d -p 8000:80 -e USERNAME=aryan -e PASSWORD=nagar testapache