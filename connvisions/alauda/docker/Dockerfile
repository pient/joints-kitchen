# all-in-one image which include nodejs, pm2, mongodb, redis

FROM centos:latest
MAINTAINER Joints Hive Project <pistech@foxmail.com>
LABEL name="Joints Hive Image" \
      vendor="pistech" \
      version="0.01" \
      license="GPLv2" \
      build-date="2016-05-29" \
      description="joints-hive member project conn-visions"

# WORKDIR ~

# install nc and git, for network test and source control
RUN yum update && yum install -y \
    epel-release \
    nc \
    git


# install nvm and then nodejs v6.2.0
# RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash
# RUN ~/.nvm/nvm.sh install v6.2.0

# install nodejs v6.2.0
RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
RUN yum -y install nodejs


# install pm2
RUN npm install -g pm2


# install mongodb
RUN mkdir -p /data/db /data/configdb
VOLUME /data/db /data/configdb

ADD etc/yum.repos.d/mongodb.repo /etc/yum.repos.d/mongodb.repo
RUN yum install -y mongodb-org

# start mongod with pm2
# RUN pm2 start mongod


# install redis
RUN yum install -y redis

# start redis-server with pm2
# RUN pm2 start redis-server

EXPOSE 80

ADD docker-entrypoint.sh /entrypoint.sh
RUN chmod 500 entrypoint.sh

# ENTRYPOINT ["/entrypoint.sh"]
# CMD ["/bin/bash"]

CMD ["/bootstrap.sh"]


