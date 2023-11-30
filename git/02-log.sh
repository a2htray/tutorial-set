# git log 可以输出分支上 commit 信息

# --pretty 选项，指定输出的内容
# %H 提交对象（commit）的完整哈希字符串
# %h 提交对象（commit）的简短哈希字符串
# %T 树对象（tree）的完整哈希字符串
# %t 树对象（tree）的简短哈希字符串
# %P 父对象（parent）的完整哈希字符串
# %p 父对象（parent）的简短哈希字符串
# %an 作者的名字
# %ae 作者的邮箱
# %ad 作者的修订日期
# %ar 作者的修订日期，按多久以前的方式显示
# %cn 提交者的名字
# %ce 提交者的邮箱
# %cd 提交日期
# %cr 提交日期，按多久以前的方式显示
# %s 提交说明

git log --pretty=format:"%H"
# e735c18034191d99add84a4039171162fd3e9024
# edc6fee909a3503755b60d046d4c7f39462d6916
# 5c3a4d946398913a842613a8e9212260a9451b71
# e8bd6004804dca9d911fa42bc609e8847156a741
# a7e998aadb95f7fe85686cbc8ad4bb2165c032f8
# 143d68494525f046fd0842f1e5bc1c29e3a329bb
# f61020fa78b5c38cde990bc4773c49fad5ce3c6e
# f58d27ed6ff7c3ceeabd521e41f72cefc0b2a31b
# 6a128b411783a3264cf38030038023001aeb1d8b
# 954d573085dd1e3b836568f7c635b42800d6ade8
# bd4d8276f71d23a7ea037c6cf2accaf4667f7c74
# 72ef7e04ed269aaed51cba6f4a4fa50d7c20c2b5
# 036827df258fd6c3b5389d252e56b1414c604db6
# 5304c80206759bd8388cff4ffb9a3514b58ef515
# 7faee9b35f95c4ca6128dc2bf5079c53f33250bd
# bb67f7e2bb674c068a87e57955069124fa045406
# b49ed346b142ad62e9b86fad7eed7e3d29471832
# c1af4a7501ea5d31cc0d0c020f5e30147c05ae7f
# 29bd56b92ee26c7970ab64e035a81f266122ae95
# f1bc8493018b36e51f1c033f76e933a23853d7a8

git log --pretty=format:"%h"
# e735c18
# edc6fee
# 5c3a4d9
# e8bd600
# a7e998a
# 143d684
# f61020f
# f58d27e
# 6a128b4
# 954d573
# bd4d827
# 72ef7e0
# 036827d
# 5304c80
# 7faee9b
# bb67f7e
# b49ed34
# c1af4a7
# 29bd56b
# f1bc849


git log --pretty=format:"%H %an %ae"
# e735c18034191d99add84a4039171162fd3e9024 a2htray a2htray@hotmail.com
# edc6fee909a3503755b60d046d4c7f39462d6916 a2htray a2htray@hotmail.com
# 5c3a4d946398913a842613a8e9212260a9451b71 a2htray a2htray@hotmail.com
# e8bd6004804dca9d911fa42bc609e8847156a741 a2htray a2htray@hotmail.com
# a7e998aadb95f7fe85686cbc8ad4bb2165c032f8 a2htray a2htray@hotmail.com
# 143d68494525f046fd0842f1e5bc1c29e3a329bb a2htray a2htray@hotmail.com
# f61020fa78b5c38cde990bc4773c49fad5ce3c6e a2htray a2htray@hotmail.com
# f58d27ed6ff7c3ceeabd521e41f72cefc0b2a31b a2htray a2htray@hotmail.com
# 6a128b411783a3264cf38030038023001aeb1d8b a2htray a2htray@hotmail.com
# 954d573085dd1e3b836568f7c635b42800d6ade8 a2htray a2htray@hotmail.com
# bd4d8276f71d23a7ea037c6cf2accaf4667f7c74 a2htray a2htray@hotmail.com
# 72ef7e04ed269aaed51cba6f4a4fa50d7c20c2b5 a2htray a2htray@hotmail.com
# 036827df258fd6c3b5389d252e56b1414c604db6 a2htray a2htray@hotmail.com
# 5304c80206759bd8388cff4ffb9a3514b58ef515 a2htray a2htray@hotmail.com
# 7faee9b35f95c4ca6128dc2bf5079c53f33250bd a2htray a2htray@hotmail.com
# bb67f7e2bb674c068a87e57955069124fa045406 a2htray a2htray@hotmail.com
# b49ed346b142ad62e9b86fad7eed7e3d29471832 a2htray a2htray@outlook.com
# c1af4a7501ea5d31cc0d0c020f5e30147c05ae7f a2htray a2htray@outlook.com
# 29bd56b92ee26c7970ab64e035a81f266122ae95 a2htray a2htray@hotmail.com
# f1bc8493018b36e51f1c033f76e933a23853d7a8 a2htray a2htray@outlook.com

git log --pretty=format:"%h %ad %ar"
# e735c18 Wed Nov 29 17:14:52 2023 +0800 21 hours ago
# edc6fee Fri Nov 24 17:14:09 2023 +0800 6 days ago
# 5c3a4d9 Thu Nov 23 16:09:19 2023 +0800 7 days ago
# e8bd600 Wed Nov 22 23:07:10 2023 +0800 8 days ago
# a7e998a Tue Nov 21 15:12:23 2023 +0800 9 days ago
# 143d684 Tue Nov 21 15:10:57 2023 +0800 9 days ago
# f61020f Mon Nov 20 17:32:31 2023 +0800 10 days ago
# f58d27e Fri Nov 17 16:40:33 2023 +0800 13 days ago
# 6a128b4 Fri Nov 17 16:39:06 2023 +0800 13 days ago
# 954d573 Fri Nov 17 16:38:41 2023 +0800 13 days ago
# bd4d827 Fri Nov 17 16:38:19 2023 +0800 13 days ago
# 72ef7e0 Fri Nov 17 09:24:06 2023 +0800 13 days ago
# 036827d Thu Nov 16 17:24:17 2023 +0800 2 weeks ago
# 5304c80 Thu Nov 16 15:43:28 2023 +0800 2 weeks ago
# 7faee9b Thu Nov 16 13:07:13 2023 +0800 2 weeks ago
# bb67f7e Wed Nov 15 16:43:53 2023 +0800 2 weeks ago
# b49ed34 Wed Nov 15 16:04:25 2023 +0800 2 weeks ago
# c1af4a7 Wed Nov 15 16:01:09 2023 +0800 2 weeks ago
# 29bd56b Wed Nov 15 15:46:30 2023 +0800 2 weeks ago
# f1bc849 Wed Nov 15 15:46:30 2023 +0800 2 weeks ago

