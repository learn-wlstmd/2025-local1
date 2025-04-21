#!/bin/bash
sudo yum install jq curl -y --allowerasing

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version

sudo yum install docker -y
sudo systemctl enable docker
sudo usermod -aG docker ec2-user
sudo usermod -aG docker root
sudo systemctl start docker
sudo chmod 666 /var/run/docker.sock

docker --version

sudo yum install -y https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_64bit/session-manager-plugin.rpm
 