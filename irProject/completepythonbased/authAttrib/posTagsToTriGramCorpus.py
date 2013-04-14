#!/usr/bin/env python

import os
import posTagsToTriGramFrequency as pt
import sys
import pickle
import gc
if sys.argv[1] == '-h':
	print("Usage: posTagsToTriGramCorpus <n-gram> <corpus>")
	sys.exit()
try:
	nGramSize = int(sys.argv[1])
	corpus = sys.argv[2]
	files = []
	for (dirpath, dirname, filenames) in os.walk(corpus):
	    files.append([dirpath,filenames])
	files = files[1:]

	data = []
	authors = {}
	Class = 0
	for direc in files:
		Class += 1
		authors[direc[0].split('/')[-1]] = Class

	print(authors)
	for direc in files:
		data.append({direc[0]:[]})
		path = '../../../dataDump/' + direc[0].split('/')[-1]
		os.makedirs(path)
		for afile in direc[1]:
			docPath = direc[0]+'/'+afile;
			temp = pt.calFeture(nGramSize, docPath, path + '/' + afile + '_dump')
			data[-1][direc[0]].append([afile,temp])
		print(direc[0])

	del files[:]
	gc.collect()


	f = open('../../../dataDump/triGramTagData.dump', 'w')
	pickle.dump(data, f)
	f.close()

	features = []
	for dirc in data:
		key = dirc.keys()[0]
		features.append([authors[key.split('/')[-1]],[]])
		files = dirc[key]
		for fil in files:
			features[-1][1].append(fil[1][1])

	del data[:]
	gc.collect()
	#print(features) 
	f = open('../../../dataDump/features.dump', 'w')
	pickle.dump(features, f)
	f.close()

	f = open('../../../dataDump/authors.dump', 'w')
	pickle.dump(authors, f)
	f.close()
except:
	sys.stderr.write('Error Occured\n')
	sys.stderr.write(str(sys.exc_info()))
	pass
