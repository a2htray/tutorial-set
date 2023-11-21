#!/usr/bin/python
import numpy as np
import pandas as pd

# 创建空 Series
s = pd.Series()
print('空 Series')
print(s)

# 从可迭代对象中创建 Series
print('从可迭代对象中创建 Series')

list1 = [1, 2, 3, 4]
s = pd.Series(list1)
print('------ list ------')
print(s)

nparray1 = np.array([4, 3, 2, 1])
s = pd.Series(nparray1)
print('------ np.array ------')
print(s)

# 创建 Series 时指定索引
print('传递 index 参数指定索引')
data = ['a', 'b', 'c']
index = [3, 2, 1]
s = pd.Series(data, index=index)
print(s)

# 从字典对象中创建 Series
print('从字典对象中创建 Series，字典的 key 为 index')
d = {
	'a': 1,
	'b': 2,
	'c': 3,
}
s = pd.Series(d)
print(s)

# 给 Series 命名
print('使用 name 参数指定 Series 名称')
s = pd.Series(10, index=['a', 'b'], name='named series')
print(s)

