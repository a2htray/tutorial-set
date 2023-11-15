#!/bin/bash

# 生成 ssh 密钥对
ssh-keygen -t rsa -C "a2htray@hotmail.com"

cat ~/.ssh/id_rsa.pub
