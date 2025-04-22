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


echo 'ragflow 0.17.2 开始安装'
sleep 1

mkdir -p /data/ragflow/0.17.2
cd /data/ragflow/0.17.2

echo 'ragflow 0.17.2 创建目录完成'
sleep 1

apt install -y git
echo 'ragflow 0.17.2 安装git完成'

cd /data/ragflow/0.17.2
git clone https://github.com/zzxym/rag-sh.git

echo 'ragflow 0.17.2 克隆git完成'

sh /data/ragflow/0.17.2/rag-sh/ragflow/0.17.2/images.sh

echo 'ragflow 0.17.2 拉取镜像完成'

cd /data/ragflow/0.17.2

git clone https://github.com/zzxym/ai-code-ragflow.git

cd /data/ragflow/0.17.2/ai-code-ragflow/0.17.2/docker

echo 'ragflow 0.17.2 默认以gpu 启动，如需改为cpu启动，命令改成 docker-compose -f docker-compose.yml up -d'

docker-compose -f docker-compose-gpu.yml up -d

echo 'ragflow 0.17.2 安装完成'




