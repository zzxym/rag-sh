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


echo 'searxng 开始安装'
sleep 1

mkdir -p /data/yunxinai/searxng
cd /data/yunxinai/searxng

echo 'searxng 创建目录完成'
sleep 1

yum install -y git
echo 'searxng 安装git完成'

cd /data/yunxinai/searxng
git clone https://gitcode.com/yunxinai/rag-sh.git

echo 'searxng克隆git完成'

sh /data/yunxinai/searxng/rag-sh/searxng/images.sh

echo 'searxng 拉取镜像完成'

cd /data/yunxinai/searxng

git clone https://gitcode.com/yunxinai/searxng-docker.git

cd /data/yunxinai/searxng/searxng-docker

docker-compose up -d

echo 'searxng 安装完成'