#!/bin/bash

echo 'dify 1.1.3 拉取镜像开始'
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_api:1.1.3
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_web:1.1.3
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/redis:6-alpine
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/postgres:15-alpine
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/nginx:latest
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_sandbox:0.2.11
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/ubuntu_squid:latest
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/semitechnologies_weaviate:1.19.0
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_plugin-daemon:0.0.6-local
echo 'dify 1.1.3 拉取镜像完成'

sleep 2

echo 'dify 1.1.3 镜像tag'
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_api:1.1.3 langgenius/dify-api:1.1.3
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_web:1.1.3 langgenius/dify-web:1.1.3
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/redis:6-alpine redis:6-alpine
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/postgres:15-alpine postgres:15-alpine
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/nginx:latest nginx:latest
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_sandbox:0.2.10 langgenius/dify-sandbox:0.2.10
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/ubuntu_squid:latest ubuntu/squid:latest
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/semitechnologies_weaviate:1.19.0 semitechnologies/weaviate:1.19.0
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_plugin-daemon:0.0.6-local langgenius/dify-plugin-daemon:0.0.6-local
echo 'dify 1.1.3 镜像tag完成'

sleep 2

echo 'dify 1.1.3 删除yunaiai镜像'
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_api:1.1.3
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_web:1.1.3
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/redis:6-alpine
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/postgres:15-alpine
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/nginx:latest
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_sandbox:0.2.11
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/ubuntu_squid:latest
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/semitechnologies_weaviate:1.19.0
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_plugin-daemon:0.0.6-local
echo 'dify 1.1.3 删除yunaiai镜像完成'