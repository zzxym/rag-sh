#!/bin/bash

echo 'searxng 拉取镜像开始'
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/caddy:2-alpine
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/searxng:latest
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/valkey:8-alpine
echo 'searxng 拉取镜像完成'

sleep 2

echo 'searxng 镜像tag'
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/caddy:2-alpine caddy:2-alpine
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/searxng:latest searxng/searxng:latest
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/valkey:8-alpine valkey/valkey:8-alpine
echo 'searxng 镜像tag完成'

sleep 2

echo 'searxng 镜像删除'
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/caddy:2-alpine
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/searxng:latest
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/valkey:8-alpine
echo 'searxng 镜像删除完成'