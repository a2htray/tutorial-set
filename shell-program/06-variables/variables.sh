#!/bin/bash

# 变量名规则
# 只能包含 a-z、A-Z、0-9 和下划线 _
# 一般约定：变量名用大写字符

# good
# ALI

# good
# USERNAME

# good
# STUDENT_NAME

# bad
# 1_ALI

# bad
#ab-c

# 定义变量
NAME=a2htray

# 访问变量
echo "${NAME} - $NAME"

# 定义只读变量
# 定义只读后，变量不能被重新赋值，不能被删除
readonly NAME

# 变量删除
GITHUB_URL=github.com
unset GITHUB_URL
echo "${GITHUB_URL} - $GITHUB_URL"
