#!/bin/bash

# 格式 array_name=(item1 item2 item3)
files1=(f1.txt f2.txt f3.txt)

# Shell 数组索引以 0 开始计数
echo "files1 第 1 个元素为 ${files1[0]}"
echo "files1 第 2 个元素为 ${files1[1]}"
echo "files1 第 3 个元素为 ${files1[2]}"
# [*] 取数组的文本列表
echo "files1 的全部元素为 ${files1[*]}"

# 如果包含空格，则需要使用双引号
files2=("f1 name.txt" "f2 age.txt" "f3 class.txt")
echo ${files2[0]}
echo ${files2[1]}
echo ${files2[2]}
# 取数组的长度
echo "files2 的长度为 ${#files2[@]}"


# 向数组中添加元素，使用 +=
files2+=("f4 gender.txt")
files2+=("f5 id.txt" "f6 teacher.txt")
echo ${files2[*]}
echo ${#files2[@]}

# 删除数组中的元素
unset files2[0]
echo "调用 unset files[0] 后，数组的长度为 ${#files2[@]}"

# 遍历数组 1 in
echo "使用 in 的方式遍历"
for file in ${files1[@]}
do
	echo $file
done

# 遍历数组 2 for
echo "使用 for 的方式遍历"
for (( i=0; i<${#files1[@]}; i++ ))
do
	echo ${files1[i]}
done

# 遍历数组 3 while
echo "使用 while 的方式遍历"
i=0
while [ $i -lt ${#files2[@]} ]
do
	echo ${files2[$i]}
	let i++
done

echo "=================================="

# ====== 其它 ======
# 逐一赋值
files3[0]=f1.csv
files3[1]=f2.csv
echo "files3 数组的长度为 ${#files3[@]}"

