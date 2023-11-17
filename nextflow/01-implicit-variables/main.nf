process task1 {
	output:
	stdout

	script:
	"""
	# 主文件所在绝对路径
	echo "projectDir: ${projectDir}"
	
	# 跑工作流的目录
	echo "launchDir: ${launchDir}"
	
	# nextflow 对象
	echo "nextflow.build: ${nextflow.build}" 
	echo "nextflow.timestamp: ${nextflow.timestamp}" 
	echo "nextflow.version: ${nextflow.version}" 

	# 工作流工作目录
	echo "workDir: ${workDir}"

	# workflow 对象
	echo "workflow.commandLine: ${workflow.commandLine}"	
	echo "workflow.homeDir: ${workflow.homeDir}"
	"""
}

workflow {
	task1 | view
}

