#!/bin/bash

echo 'ragflow v0.17.0 拉取镜像开始'

docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/ragflow:v0.17.0
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/valkey:8
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/mysql:8.0.39
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/quay.io_minio:RELEASE.2023-12-20T01-00-02Z
docker pull crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/elasticsearch:8.11.3

echo 'ragflow v0.17.0 拉取镜像完成'

sleep 2

echo 'ragflow v0.17.0 镜像tag'

docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/ragflow:v0.17.0 infiniflow/ragflow:v0.17.0
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/valkey:8 valkey/valkey:8
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/mysql:8.0.39 mysql:8.0.39
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/quay.io_minio:RELEASE.2023-12-20T01-00-02Z quay.io/minio/minio:RELEASE.2023-12-20T01-00-02Z
docker tag crpi-33mr80vehc50lqh8.cn-chengdu.personal.cr.aliyuncs.com/yunxinai/elasticsearch:8.11.3 elasticsearch:8.11.3

echo 'ragflow v0.17.0 镜像tag完成'