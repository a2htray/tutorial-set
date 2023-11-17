/*
process 块格式

process < name > {
	[ directives ]
	
	input:
	< process input >

	output:
	< process output >

	when:
	< condition >

	[script|shell|exec]:
	< user script to be executed >
}
*/

// 基本
process basicTask {
	"""
	echo "hello world" > basicTask.log
	"""
}



workflow {
	basicTask
}
