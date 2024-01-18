# 归纳与 Python 相关的基础操作

**如何找到 site-packages 目录**

```shell
$ python -m site
sys.path = [
    '/usr/local/lib/python37.zip',
    '/usr/local/lib/python3.7',
    '/usr/local/lib/python3.7/lib-dynload',
    '/usr/local/lib/python3.7/site-packages',
]
USER_BASE: '/root/.local' (doesn't exist)
USER_SITE: '/root/.local/lib/python3.7/site-packages' (doesn't exist)
ENABLE_USER_SITE: True
```

或者输出 `sys.path` 值

```jupyter
>>> import sys
>>> sys.path
['', '/usr/local/lib/python36.zip', '/usr/local/lib/python3.7', '/usr/local/lib/python3.7/lib-dynload', '/usr/local/lib/python3.7/site-packages']
```