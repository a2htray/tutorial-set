all:
	touch a.log
	touch cleana cleanb

# 加了 .PHONY: cleana 则表示伪目标，即使 cleana 文件存在，也会执行 cleana 伪目标
.PHONY: cleana
cleana:
	rm -f a.log clean*

# 如果 cleanb 文件存在且日期为最新，则不会执行 cleanb 目标
cleanb:
	rm -f a.log clean*
