#!/usr/bin/env bash

version=${1:-latest}
docker pull image.xiaohuodui.cn/junyue/junyue-saas-cron:$version
CID=$(docker ps -a | grep 'junyue-saas-cron' | awk '{print $1}');
docker stop $CID
docker rm $CID
docker rmi $(docker images | grep "none" | awk '{print $3}')
docker run -d --network junyue -p 8086:9002 -v /root/junyue/logs:/logs -v /root/junyue/config:/config --name junyue-saas-cron -e TZ=Asia/Shanghai  --entrypoint '/bin/sh' image.xiaohuodui.cn/junyue/junyue-saas-cron:$version -c 'java -Djava.security.egd=file:/dev/./urandom -jar /app.jar --spring.config.location=file:/config/cron-application.yml --logging.config=file:/config/cron-logback-spring.xml'
