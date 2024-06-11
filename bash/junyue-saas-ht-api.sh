#!/usr/bin/env bash

version=${1:-latest}
docker pull image.xiaohuodui.cn/junyue/junyue-saas-ht-api:$version
CID=$(docker ps -a | grep 'junyue-saas-ht-api' | awk '{print $1}');
docker stop $CID
docker rm $CID
docker rmi $(docker images | grep "none" | awk '{print $3}')
docker run -d --network junyue -p 8082:9001 -v /root/junyue/logs:/logs -v /root/junyue/config:/config --name junyue-saas-ht-api -e TZ=Asia/Shanghai  --entrypoint '/bin/sh' image.xiaohuodui.cn/junyue/junyue-saas-ht-api:$version -c 'java -Djava.security.egd=file:/dev/./urandom -jar /app.jar --spring.config.location=file:/config/p-application.yml --logging.config=file:/config/p-logback-spring.xml'
