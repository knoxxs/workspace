#!/usr/bin/env python

import sys

fr = open(sys.argv[1],'r')
fw = open(sys.argv[2],'w')

sentences = fr.read().strip().split('.')
sentences = [sentence for sentence in sentences if sentence != '']

for sentence in sentences:
	for word in sentence.split():
		fw.write(word + ' \n')
	fw.write('\n')