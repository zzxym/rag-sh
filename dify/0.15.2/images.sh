#!/bin/bash

echo 'dify 0.15.2 拉取镜像开始'

docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_api:0.15.2
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_web:0.15.2
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/redis:6-alpine
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/postgres:15-alpine
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/nginx:latest
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_sandbox:0.2.10
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/ubuntu_squid:latest
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/semitechnologies_weaviate:1.19.0

echo 'dify 0.15.2 拉取镜像完成'

sleep 2

echo 'dify 0.15.2 镜像tag'

docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_api:0.15.2 langgenius/dify-api:0.15.2
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_web:0.15.2 langgenius/dify-web:0.15.2
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/redis:6-alpine redis:6-alpine
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/postgres:15-alpine postgres:15-alpine
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/nginx:latest nginx:latest
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/dify_sandbox:0.2.10 langgenius/dify-sandbox:0.2.10
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/ubuntu_squid:latest ubuntu/squid:latest
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/semitechnologies_weaviate:1.19.0 semitechnologies/weaviate:1.19.0

echo 'dify 0.15.2 镜像tag完成'