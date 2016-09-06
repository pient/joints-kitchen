#!/usr/bin/env bash

#切换目录
cd /opt/app/nodeapps/nodehdt

#移除之前目录
rm -rf ./current/package

# 解包
tar -zxvf ./packages/hdt-0.0.1.tgz -C ./current

# 重启pm2
pm2 restart nodehdt