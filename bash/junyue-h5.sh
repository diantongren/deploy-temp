#!/usr/bin/env bash

docker pull image.xiaohuodui.cn/junyue/junyue-appointment-h5:${1}
CID=$(docker ps -a | grep 'junyue-appointment-h5' | awk '{print $1}');
docker stop $CID
docker rm $CID
docker rmi $(docker images | grep "none" | awk '{print $3}')
docker run -d --network junyue -p 8088:80 --name junyue-appointment-h5 -e TZ=Asia/Shanghai image.xiaohuodui.cn/junyue/junyue-appointment-h5:${1}
