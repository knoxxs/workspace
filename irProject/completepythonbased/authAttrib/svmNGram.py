#!/usr/bin/env python

from __future__ import print_function
import sys
import traceback
from sklearn import svm
from sklearn import neighbors
from sklearn import preprocessing
import json
import posTagsToTriGramFrequency as pt
import linecache
import itertools
import re
import copy

def svmProperties(clf, nFeatures):
	print("support vectors")
	print(clf.support_vectors_)

	print("indices of support vectors")
	print(clf.support_)

	print("number of support vectors for each class")
	print(clf.n_support_)

	print("# of Classifiers Used:")
#	print(clf.decision_function([[1]*nFeatures]).shape[1])


if sys.argv[1] == '-h':
	print("Usage: svmNGram.py <nGramSize> <totalSelectedTags> <-d/-s> <-p/-i> <folder> <knn/svm>")
	sys.exit()
try:
	folder = sys.argv[5]
	nGramSize = int(sys.argv[1])
	totalTags = int(sys.argv[2])

	authors = {}
	authors_test = {}
	authors_testSelected = {}

	print('Generating tags ngram')
	tagsnGram = [tuple(x) for x in itertools.product(pt.getTags(), repeat=nGramSize)]

	print('Reading Selected Tags Gram')
	line = linecache.getline('../../../../dataDump/' + folder + '/tagsInfo.dump', 6)
	selectedTagsnGram = line.strip().split()
	selectedTagsnGram = [eval(x) for x in selectedTagsnGram]
	nFeatures = len(selectedTagsnGram)

	if sys.argv[6] == 'svm':
		clf = svm.SVC()
	elif sys.argv[6] == 'knn':
		clf = neighbors.KNeighborsRegressor(1, weights='distance')
	if sys.argv[3] == '-d':
		if sys.argv[4] == '-p':
			print('Reading Training Data')
			fProfile = open('../../../../dataDump/' + folder + '/selectedFeaturesProfile.dump', 'r')
			authors = json.load(fProfile)
			fProfile.close()
			authorNames = authors.keys()
			print('Training SVM')
			# print(authors.values())
			#print(zip(authors.values(), range(len([x.encode('ascii') for x in authors.keys()]))))
			clf.fit(authors.values(), range(len([x.encode('ascii') for x in authors.keys()])))

		elif sys.argv[4] == '-i':
			authorPatter = re.compile('[a-zA-Z_]+')
			fInstance  = open('../../../../dataDump/' + folder + '/selectedFeaturesInstance.dump', 'r')
			
			author = ''
			flag = 1
			for line in fInstance:
				if authorPatter.match(line[:-1]):
					author = line[:-1]
					flag = 1
				elif line != '\n':
					if flag == 1:
						docs = line.strip().split()
						flag = 0
						authors[author] = [[] for i in range(len(docs))]
					docs = iter(line.strip().split())
					for afile in authors[author]:
						afile.append(float(docs.next()))

			fInstance.close()
			authorNames = authors.keys()
			labels = [] 
			for author in authors:
				labels += [authorNames.index(author)] * len(authors[author])
			
			# inputs = []
			# for x in authors.values():
			# 	inputs += x
			print('Training SVM')
			print(clf.fit([item for x in authors.values() for item in x], labels ) )

		if sys.argv[6] == 'svm':
			svmProperties(clf, nFeatures)

		print('Reading Test Data')
		authorPatter = re.compile('[a-zA-Z_]+')
		fProfile_test = open('../../../../dataDump/' + folder + '_test/features.dump', 'r')
		author = ''
		for line in fProfile_test:
			if(line == '\n'):
				pass
			elif authorPatter.match(line[:-1]):
				author = line[:-1]
				authors_test[author] = []
			else:
				tagsFreq = line.strip().split()
				authors_test[author].append(tagsFreq)
		
		fProfile_test.close()

		print('Selecting selected features in test data')
		selectedIndices = []
		for selectedTagnGram in selectedTagsnGram:
			selectedIndices.append( tagsnGram.index(selectedTagnGram) )

		for author in authors_test:
			authors_testSelected[author] = []
			for doc in authors_test[author]:
				authors_testSelected[author].append([])
				for index in selectedIndices:
					authors_testSelected[author][-1].append(doc[index])

		del authors_test
		# print(authors_testSelected)
		print('Testing SVM')
		totalTestCases = 0
		wronglyClassified = 0
		for author in authors_testSelected:
			for doc in authors_testSelected[author]:
				#print(author, doc)
				clas = clf.predict([float(x) for x in doc])[0]
				print(authorNames[int(clas)], author)
				if authorNames[int(clas)] != author:
					wronglyClassified += 1
				totalTestCases += 1

		print(totalTestCases, wronglyClassified)
	if sys.argv[3] == '-s':
		print('Reading Training Data')
		fProfile = open('../../../../dataDump/' + folder + '/selectedFeaturesProfile.dump', 'r')
		authors = json.load(fProfile)
		fProfile.close()
		
		print(clf.fit(authors.values(), authors.keys()))
		svmProperties(clf)
		
		print('Training SVM')
		clf = svm.SVC()
		print(clf.fit(authors.values(), authors.keys()))

		svmProperties(clf)

 
except:
	sys.stderr.write('Error Occured\n')
	sys.stderr.write(str(sys.exc_info()))
	traceback.print_exc()
	pass
