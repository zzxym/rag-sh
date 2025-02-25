#!/bin/bash

echo 'dify 0.15.3 开始安装'

sleep 1

mkdir -p /data/yunxinai/dify/0.15.3
cd /data/yunxinai/dify/0.15.3

echo 'dify 0.15.3 创建目录完成'
sleep 1

yum install -y git
echo 'dify 0.15.3 安装git完成'

git clone https://github.com/langgenius/dify.git



