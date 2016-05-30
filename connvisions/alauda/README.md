# JointsHive connvisions-alauda

## 介绍

connvisions-alauda是connvisions在线业务平台的云平台，构建于灵雀云

docker包含平台的运行容器
vagrant为平台的开发环境

## 使用

###构建Docker

- 构建Dockerfile

```

// 查看当前机器docker-machine
docker-machine ls

// 启动目标machine(通常为默认default)
docker-machine start default

// 设置默认deamon环境(如下采用default作为deamon虚拟机)
eval "$(docker-machine env default)"

// 查看docker环境
docker info


// 当前目录下，构建Dockerfile
docker build -t joints-cv .

// 
docker run -it joints-cv /bin/bash


```
