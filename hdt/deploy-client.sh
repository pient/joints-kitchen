#!/usr/bin/env bash

WORKSPCE_DIR="/Users/liuyi/CodeRepo/work/hdt/nodehdt"
SERVER_DIR="/opt/app/nodeapps/nodehdt"

# 切换目录
cd ${WORKSPCE_DIR}

# 安装新的npm包
npm install

# 运行构建
npm run build

# 打包(可以用tar命令打包)
tar -zcvf "${WORKSPCE_DIR}/hdt-0.0.1.tgz" /${WORKSPCE_DIR}
slc build --pack

# 上传包
scp "${WORKSPCE_DIR}/hdt-0.0.1.tgz" nodehdt@10.255.13.56:${SERVER_DIR}/packages



