#海店通

##部署

```
ssh nodehdt@10.255.13.56

// 为loopback-storeage创建临时存储目录
mkdir -p /opt/app/nodeapps/nodehdt/uploads/tmp

// 启动
cd /opt/app/nodeapps/nodehdt/current/package/server

pm2 start -x pm2.stag.json

```

### 客户端
```

// 检查reg目录是否去掉测试代码

// 运行构建
npm run build

// 打包
slc build --pack

// 上传

<!-- scp <package-path> username@servername:<deploy-path> -->
scp ../hdt-0.0.1.tgz nodehdt@10.255.13.56:/opt/app/nodeapps/nodehdt/packages

```

### 服务端

```
// 进入目录
cd /opt/app/nodeapps/nodehdt

// 解包
rm -rf ./current/package && tar -zxvf ./packages/hdt-0.0.1.tgz -C ./current && pm2 restart nodehdt

```
### 统一执行
```
cd <项目目录>
npm run build && slc build --pack && scp ../hdt-0.0.1.tgz nodehdt@10.255.13.56:/opt/app/nodeapps/nodehdt/packages

ssh nodehdt@10.255.13.56

cd /opt/app/nodeapps/nodehdt && rm -rf ./current/package && tar -zxvf ./packages/hdt-0.0.1.tgz -C ./current && pm2 restart nodehdt

```



