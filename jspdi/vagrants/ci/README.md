# JSPDI CI

## 介绍

JSPDI CI为jspdi项目持续集成环境

## 环境初始化


#### 安装docker

```
// 1. Log into your machine as a user with sudo or root privileges.

// 2. Make sure your existing yum packages are up-to-date.
sudo yum update

// 3. Add the yum repo.
sudo tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

// 4. Install the Docker package.
sudo yum install docker-engine

// 3,4 install var script
// curl -fsSL https://get.docker.com/ | sh

// 5. Start the Docker daemon.
sudo service docker start

// 6. Verify docker is installed correctly by running a test image in a container.
sudo docker run hello-world

```