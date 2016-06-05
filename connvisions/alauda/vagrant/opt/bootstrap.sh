#!/usr/bin/env bash

echo "let's start"

yum update && yum install -y epel-release


# 安装nodejs
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
yum -y install nodejs



