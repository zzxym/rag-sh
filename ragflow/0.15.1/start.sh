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


echo 'ragflow 0.15.1 开始安装'
sleep 1

mkdir -p /data/yunxinai/ragflow/0.15.1
cd /data/yunxinai/ragflow/0.15.1

echo 'ragflow 0.15.1 创建目录完成'
sleep 1

yum install -y git
echo 'ragflow 0.15.1 安装git完成'

cd /data/yunxinai/ragflow/0.15.1
git clone https://gitcode.com/yunxinai/rag-sh.git

echo 'ragflow 0.15.1 克隆git完成'

sh /data/yunxinai/ragflow/0.15.1/rag-sh/ragflow/0.15.1/images.sh

echo 'ragflow 0.15.1 拉取镜像完成'

cd /data/yunxinai/ragflow/0.15.1

git clone https://gitcode.com/yunxinai/ai-code-ragflow.git

cd /data/yunxinai/ragflow/0.15.1/ai-code-ragflow/0.15.1/docker

echo 'ragflow 0.15.1 默认以cpu 启动，如需改为gpu启动，命令改成 docker-compose -f docker-compose-gpu.yml up -d'

docker-compose -f docker-compose-gpu.yml up -d

echo 'ragflow 0.15.1 安装完成'




