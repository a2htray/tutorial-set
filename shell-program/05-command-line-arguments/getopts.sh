#!/bin/bash


# 选项后面跟一个冒号表示该选项要带参数，如 u: 表示 -u 后要跟一个参数
while getopts u:g:r: flag
do
    case ${flag} in
        u) username=${OPTARG};;
        g) gender=${OPTARG};;
        r) role=${OPTARG};;
    esac
done

echo "Username: $username";
echo "Gender: $gender";
echo "Role: $role";
