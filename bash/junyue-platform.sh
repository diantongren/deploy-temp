#!/usr/bin/env bash

docker pull image.xiaohuodui.cn/junyue/junyue-platform:${1}
CID=$(docker ps -a | grep 'junyue-platform' | awk '{print $1}');
docker stop $CID
docker rm $CID
docker rmi $(docker images | grep "none" | awk '{print $3}')
docker run -d --network junyue -p 8087:80 --name junyue-platform -e TZ=Asia/Shanghai -v /root/junyue/config/config.js:/usr/share/nginx/html/config.js image.xiaohuodui.cn/junyue/junyue-platform:${1}
