#!/usr/bin/env bash

echo "let's start"

yum update && yum install -y epel-release

# 安装 git
yum -y install git

# 升级git >= 1.7.10
# yum -y update git

# 升级git
# yum install http://opensource.wandisco.com/centos/6/git/x86_64/wandisco-git-release-6-1.noarch.rpm
# yum install git
# yum remove wandisco-git-release-6-1.noarch

# 安装nodejs
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
sudo yum -y install nodejs

# 安装pm2
npm install -g pm2


# 解压包
# tar -tf <package-name.tgz>

# 安装node-gyp
# npm install -g node-gyp 

# 安装loopback
# sudo chown -R $USER /usr/local
# sudo chown -R $USER /usr/lib/node_modules
# sudo npm install -g strongloop --registry http://registry.npm.taobao.org/
# sudo npm install -g --unsafe-perm strongloop --registry http://registry.npm.taobao.org/

# 启动loopback进程管理
# slc pm

# 安装loopback进程管理服务
# sudo npm install -g strong-pm
# sudo sl-pm-install --upstart=0.6

# 启动loopback进程管理服务（默认端口8701）
# sudo /sbin/initctl start strong-pm

# 部署服务
# 创建服务
# slc ctl create <service-name>

#移除服务
# slc ctl remove <service-name>

# slc deploy -s <service-name> http://<host-name>:<pm-port> <package-path>






