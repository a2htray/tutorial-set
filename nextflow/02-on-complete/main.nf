workflow {
	println "${workflow.homeDir}"
}

# 流程结束后会执行 workflow.onComplete 块中的代码
workflow.onComplete {
	println "run completely"
}
