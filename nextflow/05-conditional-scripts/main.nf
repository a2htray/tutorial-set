params.mode = 'debug'

process showMode {
	output:
	stdout

	script:
	if ( params.mode == 'debug' )
		"""
		echo "${params.mode}"
		"""
	else
		"""
		echo "${params.mode}"
		"""
}

workflow {
	showMode | view
}
