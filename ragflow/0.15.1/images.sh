#!/bin/bash

echo 'ragflow v0.15.1 拉取镜像开始'
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/ragflow:v0.15.1
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/elasticsearch:8.11.3
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/valkey:8
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/mysql:5.7
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/quay.io_minio:RELEASE.2023-12-20T01-00-02Z
echo 'ragflow v0.15.1 拉取镜像完成'

sleep 2

echo 'ragflow v0.15.1 镜像tag'
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/ragflow:v0.15.1 infiniflow/ragflow:v0.15.1
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/elasticsearch:8.11.3 elasticsearch:8.11.3
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/valkey:8 valkey/valkey:8
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/mysql:5.7 mysql:5.7
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/quay.io_minio:RELEASE.2023-12-20T01-00-02Z quay.io/minio/minio:RELEASE.2023-12-20T01-00-02Z
echo 'ragflow v0.15.1 镜像tag完成'

echo 'ragflow v0.17.2 删除yunaiai镜像'
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/ragflow:v0.15.1
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/valkey:8
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/mysql:5.7
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/quay.io_minio:RELEASE.2023-12-20T01-00-02Z
docker rmi crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/elasticsearch:8.11.3
echo 'ragflow v0.17.2 删除yunaiai镜像完成'