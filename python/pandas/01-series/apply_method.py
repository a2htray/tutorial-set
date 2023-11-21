#!/usr/bin/python

import pandas as pd

s1 = pd.Series([1, 2, 3, 4])

print('原始 Series')
print(s1)

def double(v):
	"""不带额外参数"""
	return v * 2


print('不带额外参数，数值 double 一下')
print(s1.apply(double))


def add_extra(v, extra):
	"""带额外参数"""
	return v + extra


print('带额外参数，各数据加 3')
print(s1.apply(add_extra, args=(3, )))

