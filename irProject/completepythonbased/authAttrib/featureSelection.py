#!/usr/bin/env python

from __future__ import print_function
import pickle
import sys
import numpy as np
import posTagsToTriGramFrequency as pt
import itertools
import gc
import copy

if sys.argv[1] == '-h':
	print("Usage: ./featureSelection <n(authorLimit)> <k(SD weight)> <nGramSize> <folder>")
	sys.exit()

n = int(sys.argv[1])
k = int(sys.argv[2])
nGramSize = int(sys.argv[3])
folder = sys.argv[4]

print('reading features')
feat = open('../../../../dataDump/'+ folder +'/features.dump','r')
features = {}

tagsnGram = [tuple(x) for x in itertools.product(pt.getTags(), repeat=nGramSize)]

gramdict = {}
for gram in tagsnGram:
	gramdict[gram] = []

flag = 1
author = ''
for line in feat:
	if(line == '\n'):
		flag = 1
	elif flag == 1:
		author = line.split('/')[-1][:-1]
		print(line, end='')
		features[author] = copy.deepcopy(gramdict)
		flag = 0
	else:
		tagsFreq = iter(line.strip().split())
		for tag in tagsnGram:
			(features[author][tag]).append(float(tagsFreq.next()))

feat.close()

print('Calculating waht to delete')
nflag = 0
kflag = 0
toDel = []
for tagGram in tagsnGram:
	nflag = 0
	for author in features:
		kflag = 0
		for doc in features[author][tagGram]:
			if doc == 0 : kflag += 1
			if kflag >= k:
				nflag += 1
				break
		if nflag >= n:
			toDel.append(tagGram)
			break

for item in toDel:
	for author in features:
		del features[author][item]

f = open('../../../../dataDump/'+ folder +'/tagsInfo.dump','w')
f.write('k:' + str(k) + ',\t n:' + str(n) + '\n')
f.write('Deleted tags:\n')
for item in toDel:
	f.write(str(item) + ' ')
f.write('\n\nSelected Tags:\n')
for tagGram in features.itervalues().next():
		f.write(str(tagGram) + ' ')
f.close()


print("Writing Back Features")
feat = open('../../../../dataDump/'+ folder +'/selectedFeaturesInstance.dump','w')
for author in features.keys():
	feat.write(author + '\n')
	for tag in features[author]:
		for doc in features[author][tag]:
			feat.write(str(doc) + ' ')
		feat.write('\n')
	feat.write('\n')
	del features[author]
	#gc.collect()
print('Closing File')
feat.close()
print('After Close')