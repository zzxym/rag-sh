#!/bin/bash

# 检查是否安装了 Docker
if ! command -v docker &> /dev/null; then
echo "Docker 未安装，请先安装 Docker。"
exit 1
fi

echo "Docker 已安装。"
docker_version=$(docker --version)
echo "Docker 版本: $docker_version"

        # 检查是否安装了 Docker Compose
if ! command -v docker-compose &> /dev/null; then
echo "Docker Compose 未安装，请先安装 Docker Compose。"
exit 1
fi

echo "Docker Compose 已安装。"
compose_version=$(docker-compose --version)
echo "Docker Compose 版本: $compose_version"


echo 'ragflow v0.17.0 开始安装'
sleep 1

mkdir -p /data/yunxinai/ragflow/0.17.0
cd /data/yunxinai/ragflow/0.17.0

echo 'ragflow v0.17.0 创建目录完成'
sleep 1

yum install -y git
echo 'ragflow v0.17.0 安装git完成'

cd /data/yunxinai/ragflow/0.17.0
git clone https://gitcode.com/yunxinai/rag-sh.git

echo 'ragflow v0.17.0 克隆git完成'

sh /data/yunxinai/ragflow/0.17.0/rag-sh/ragflow/0.17.0/images.sh

echo 'ragflow v0.17.0 拉取镜像完成'

cd /data/yunxinai/ragflow/0.17.0

git clone https://gitcode.com/yunxinai/rag-file.git

cd /data/yunxinai/ragflow/0.17.0/rag-file/ragflow/0.17.0/ragflow/docker

docker-compose up -d

echo 'ragflow v0.17.0 安装完成'




