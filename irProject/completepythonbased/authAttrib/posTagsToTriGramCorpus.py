#!/usr/bin/env python

import os
import posTagsToTriGramFrequency as pt
import sys
import json
import gc
import itertools
import traceback
import matplotlib.pyplot as plt

if sys.argv[1] == '-h':
	print("Usage: posTagsToTriGramCorpus <n-gram> <corpus> <folder>")
	sys.exit()
try:
	nGramSize = int(sys.argv[1])
	corpus = sys.argv[2]
	folder = sys.argv[3]

	files = []
	for (dirpath, dirname, filenames) in os.walk(corpus):
		files.append([dirpath,filenames])
	files = files[1:]

	data = {}
	authors = []
	Class = 0
	for direc in files:
		authors.append(direc[0].split('/')[-1])

	feat = open('../../../../dataDump/' + folder + '/features.dump','wr')

	tagsnGram = [list(x) for x in itertools.product(pt.getTags(), repeat=nGramSize)]

	f= open('../../../../dataDump/' + folder + '/nGramTags.dump','w')
	for gram in tagsnGram:	
		f.write(str(gram) + ' ')
	
	totalnGramTags = len(tagsnGram)

	pt.init(nGramSize)

	for direc in files:
		author = direc[0].split('/')[-1]
		data[author] = [0] * totalnGramTags
		feat.write(author + '\n')
		path = '../../../../dataDump/' + folder + '/' + author
		# if not os.path.exists(path):
		# 	os.makedirs(path)
		totalFiles = 0
		for afile in direc[1]:
			totalFiles += 1
			docPath = direc[0]+'/'+afile;
			temp = pt.calFeature(nGramSize, docPath, path + '/' + afile + '_dump')
			
			#feat.write(afile + ' ')
			if(len(temp) == 0):
				continue
			for word in temp:
				feat.write( str(word) + ' ')
			feat.write('\n')

			# plt.clf()
			# fig = plt.figure(1)
			# plt.plot(range(totalnGramTags), temp)
			# #plt.xticks(range(totalnGramTags), tagsnGram, fontsize=1, rotation='vertical')
			# plt.savefig('../../../../dataDump/' + folder + '/graphs/'+ afile + '_freq.png')
			# fig.tight_layout()
			data[author] = [(x+y) for x,y in itertools.izip(data[author],temp)]
		feat.write('\n')

		for i in range(len(data[author])):
			data[author][i] = data[author][i] / totalFiles

		plt.clf()
		fig = plt.figure(1)
		plt.plot(range(totalnGramTags), data[author])
		#plt.xticks(range(totalnGramTags), tagsnGram, fontsize=1, rotation='vertical')
		plt.savefig('../../../../dataDump/' + folder + '/graphs/'+ author + '_freq.png')
		fig.tight_layout()

		print(direc[0])

	del files[:]
	del tagsnGram[:]
	gc.collect()

	f = open('../../../../dataDump/' + folder + '/nGramTagDataProfile.dump', 'w')
	json.dump(data, f)
	f.close()

	temp  = [0] * totalnGramTags
	for value in data.values():
		temp = [(x+y) for x,y in itertools.izip(temp,value)]
	f = open('../../../../dataDump/' + folder + '/nGramTagDataTotal.dump', 'w')
	json.dump(temp, f)
	f.close()

	plt.clf()
	fig = plt.figure(1)
	plt.plot(range(totalnGramTags), temp)
	#plt.xticks(range(totalnGramTags), tagsnGram, fontsize=1, rotation='vertical')
	plt.savefig('../../../../dataDump/' + folder + '/graphs/total_freq.png')
	#plt.show()
	fig.tight_layout()

	f = open('../../../../dataDump/' + folder + '/authors.dump', 'w')
	json.dump(authors, f)
	f.close()

except:
	sys.stderr.write('Error Occured\n')
	sys.stderr.write(str(sys.exc_info()))
	traceback.print_exc()
	pass
