#!/bin/bash

# 检查是否安装了 Docker
if ! command -v docker &> /dev/null; then
    echo "Docker 未安装，准备安装 Docker，安装后请重新运行脚本。"
    apt-get update
    apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    apt-get update
    apt-get install -y docker-ce docker-ce-cli containerd.io
    exit 1
fi

echo "Docker 已安装。"
docker_version=$(docker --version)
echo "Docker 版本: $docker_version"

# 检查是否安装了 Docker Compose
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose 未安装，准备安装 Docker Compose,安装后请重新运行脚本。"
    apt-get update
    apt-get remove --purge docker docker-engine docker.io containerd runc
    apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    apt-get update
    apt-get install -y docker-ce docker-ce-cli containerd.io
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

if [ -f /etc/systemd/system/ragflow-0.17.2.service ]; then
    echo "服务已存在，跳过创建。"
else
    echo '正在创建 systemd 服务...'
        DOCKER_PATH=$(which docker)
        SERVICE_CONTENT="[Unit]
Description=Ragflow 0.17.2 Service (GPU)
After=docker.service
Requires=docker.service

[Service]
Type=simple
User=root  
WorkingDirectory=/data/ragflow/0.17.2/ai-code-ragflow/0.17.2/docker
ExecStart=$DOCKER_PATH compose -f docker-compose-gpu.yml up -d
Restart=always
RestartSec=5
DelayStart=180  # 延时180 秒

[Install]
WantedBy=multi-user.target"

# 写入服务文件
sudo sh -c "echo '$SERVICE_CONTENT' > /etc/systemd/system/ragflowup.service"

# 重载 systemd 配置
sudo systemctl daemon-reload
sudo systemctl enable --now ragflowup.service
fi


# 启用并启动服务（立即生效，且开机自启）
sudo systemctl start ragflowup.service

echo 'systemd 服务创建并启用完成。'


### 原脚本末尾的启动命令（可选：若需要首次执行时立即启动，可保留）###
# echo 'ragflow 0.17.2 默认以gpu 启动，如需改为cpu启动，命令改成 docker-compose -f docker-compose.yml up -d'
# docker-compose -f docker-compose-gpu.yml up -d
# echo 'ragflow 0.17.2 安装完成'
