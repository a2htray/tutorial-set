#!/bin/bash

# 只输出匹配的文本
# -o, --only-matching       show only the part of a line matching PATTERN
echo 1234abcd | grep -oP "\d*"