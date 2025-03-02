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


echo 'dify 1.0.0 开始安装'
sleep 1

mkdir -p /data/yunxinai/dify/1.0.0
cd /data/yunxinai/dify/1.0.0

echo 'dify 1.0.0 创建目录完成'
sleep 1

yum install -y git
echo 'dify 1.0.0 安装git完成'

cd /data/yunxinai/dify/1.0.0
git clone https://gitcode.com/yunxinai/rag-sh.git

echo 'dify 1.0.0 克隆git完成'

sh /data/yunxinai/dify/1.0.0/rag-sh/dify/1.0.0/images.sh

echo 'dify 1.0.0 拉取镜像完成'

cd /data/yunxinai/dify/1.0.0

git clone https://gitcode.com/yunxinai/rag-file.git

cd /data/yunxinai/dify/1.0.0/rag-file/dify/1.0.0/dify/docker

cp .env.example .env

docker-compose up -d

echo 'dify 1.0.0 安装完成'




