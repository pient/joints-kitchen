#!/usr/bin/env bash

echo "let's start"

yum update && yum install -y epel-release

# 安装git
yum -y install git

# 安装nodejs
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
yum -y install nodejs

# 安装pm2
npm install -g pm2

# 安装nrm
npm install -g nrm

# 安装mongodb
mkdir -p /data/db /data/configdb

cp opt/deploy/mongodb.repo /etc/yum.repos.d/mongodb.repo
yum install -y mongodb-org


# 启动mongod
pm2 start mongod


# 安装redis
yum install -y redis

# 启动redis-server
pm2 start redis-server