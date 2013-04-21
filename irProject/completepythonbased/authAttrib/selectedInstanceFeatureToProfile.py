#!/usr/bin/env python

from __future__ import print_function
import sys
import traceback
import re
import itertools
import json

if sys.argv[1] == '-h':
	print("Usage: selectedInstanceFeatureToProfile.py <nGramSize> <totalTags> <folder>")
	sys.exit()
try:
	folder = sys.argv[3]
	nGramSize = int(sys.argv[1])
	totalTags = int(sys.argv[2])

	authorPatter = re.compile('[a-zA-Z_]+')

	fInstance  = open('../../../../dataDump/' + folder + '/selectedFeaturesInstance.dump', 'r')
	
	authors = {}
	author = ''
	for line in fInstance:
		if authorPatter.match(line[:-1]):
			author = line[:-1]
			authors[author] = [] 
		elif line != '\n':
			docs = line.strip().split()
			authors[author].append(sum([float(x) for x in docs]) / len(docs) )

	fInstance.close()
	# print(authors)
	fProfile = open('../../../../dataDump/' + folder + '/selectedFeaturesProfile.dump', 'w')
	json.dump(authors,fProfile)
	fProfile.close()
	
except:
	sys.stderr.write('Error Occured\n')
	sys.stderr.write(str(sys.exc_info()))
	traceback.print_exc()
	pass
