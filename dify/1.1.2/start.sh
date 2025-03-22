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


echo 'dify 1.1.2 开始安装'
sleep 1

mkdir -p /data/yunxinai/dify/1.1.2
cd /data/yunxinai/dify/1.1.2

echo 'dify 1.1.2 创建目录完成'
sleep 1

yum install -y git
echo 'dify 1.1.2 安装git完成'

cd /data/yunxinai/dify/1.1.2
git clone https://gitcode.com/yunxinai/rag-sh.git

echo 'dify 1.1.2 克隆git完成'

sh /data/yunxinai/dify/1.1.2/rag-sh/dify/1.1.2/images.sh

echo 'dify 1.1.2 拉取镜像完成'

cd /data/yunxinai/dify/1.1.2

git clone https://gitcode.com/yunxinai/ai-code-dify

cd /data/yunxinai/dify/1.1.2/ai-code-dify/1.1.2/docker

cp .env.example .env

docker-compose up -d

echo 'dify 1.1.2 安装完成'




