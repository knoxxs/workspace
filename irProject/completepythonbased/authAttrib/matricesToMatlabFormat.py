#!/usr/bin/env python

import json
import posTagsToTriGramFrequency as pt

f = open('../../../../dataDump/indexPosTagsDoc/profileMatrices', 'r')
matrices = json.load(f)

temp = 0
for author in matrices:
	temp += 1
	f = open('../../../../dataDump/indexPosTagsDoc/profileMatrices_' + str(temp), 'w' )
	for tag in pt.getTags():
		for val in matrices[author][tag]:
			print(tag)
			f.write(str(val) + ',')
		f.write('\n')
	f.close()

f = open('../../../../dataDump/indexPosTagsDoc/tags', 'w')
for tag in matrices['Pravin_Darji']:
	f.write(tag + ',')
