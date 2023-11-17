process perlTask {
	output:
	stdout

	script:
	"""
	#!/usr/bin/perl

	print "Hi Perl"
	"""
}

process pythonTask {
	output:
	stdout

	script:
	"""
	#!/bin/python

	x = 1
	y = 2
	
	print(x + y)
	"""
}

workflow {
	pythonTask | view
	perlTask | view
}
