# -*- coding: utf-8 -*-

import math
import numpy
import nltk
import matplotlib.pyplot as plt
import operator
import sys
import os
import collections

def avgWordLength(fileName):
	f = open(fileName,'r')

	lengths = []
	for line in f:
	    for word in line.split():
			lengths.append(len(word.decode('utf-8')))

	avgLength = float(sum(lengths))/float(len(lengths))

	temp = 0
	for val in lengths:
		temp += math.pow((avgLength - val),2)
	standardDeviation = math.sqrt(temp / len(lengths))

	median = numpy.median(numpy.asarray(lengths))
	maxLength = max(lengths)
	minLength = min(lengths)

	f.close()
	return avgLength, standardDeviation, median, minLength, maxLength

def avgSentenceLength(fileName):
	f = open(fileName,'r')

	lengths = []
	for line in f:
		lengths.append(len(line.decode('utf-8')))

	avgLength = float(sum(lengths))/float(len(lengths))

	temp = 0
	for val in lengths:
		temp += math.pow((avgLength - val),2)
	standardDeviation = math.sqrt(temp / len(lengths))

	median = numpy.median(numpy.asarray(lengths))
	maxLength = max(lengths)
	minLength = min(lengths)

	f.close()
	return avgLength, standardDeviation, median, minLength, maxLength

def stats(corpus):
	files = []
	for (dirpath, dirname, filenames) in os.walk(corpus):
	    files.append([dirpath,filenames])
	
	totalDocWords = 0
	totalDocs = len(files)
	maxm = []
	minm = []
	lengths = [[],[],[]]

	for direc in files:
		for afile in direc[1]:
			f = open(direc[0]+'/'+afile,'r')
			print(direc[0]+'/'+afile)
			totalChars = 0
			totalWords = 0
			totalSentences = 0
			for line in f:	    
			    totalSentences += 1
			    for word in line.split():
					totalWords += 1
					length = len(word.decode('utf-8'))
					totalChars += length
					#print(word)
			f.close()
			lengths[0].append(totalChars)
			lengths[1].append(totalWords)
			lengths[2].append(totalSentences)

	avgLength = []
	standardDeviation = []
	median = []

	for i in range(3):
		avgLength.append( float(sum(lengths[i]))/float(totalDocs) )
		temp = 0
		for val in lengths[i]:
			temp += math.pow((avgLength[i] - val),2)

		standardDeviation.append( math.sqrt(temp / totalDocs) )

		median.append(numpy.median(numpy.asarray(lengths[i])))

		minm.append(min(lengths[i]))
		maxm.append(max(lengths[i]))

	return avgLength, standardDeviation, median, minm, maxm, avgLength[0]/avgLength[1]

def totalCompoundTerms(corpus):
	halant = '्'.decode('utf-8')

	files = []
	for (dirpath, dirname, filenames) in os.walk(corpus):
	    files.append([dirpath,filenames])

	total = 0
	
	for direc in files:
		for afile in direc[1]:
			f = open(direc[0]+'/'+afile,'r')
			print(direc[0]+'/'+afile)
			for line in f:
			    for word in line.split():
					word = word.decode('utf-8')
					for char in word:
						if char == halant:
							total += 1
			f.close()

	return total

def totalCVOccurences(corpus):
	vowelsTemp = ['ा','ि','ी','ु','ू','े','ै','ो','ौ','ं','ँ',':']
	vowels2Temp = ['अ','आ','इ','ई','उ','ऊ','ए','ऐ','ओ','औ']
	vowels = []
	vowels2 = []

	for i in vowelsTemp:
		vowels.append(i.decode('utf-8'))
	for i in vowels2Temp:
		vowels2.append(i.decode('utf-8'))

	files = []
	for (dirpath, dirname, filenames) in os.walk(corpus):
	    files.append([dirpath,filenames])

	total = 0
	
	for direc in files:
		for afile in direc[1]:
			f = open(direc[0]+'/'+afile,'r')
			print(direc[0]+'/'+afile)
			for line in f:
			    for word in line.split():
					word = word.decode('utf-8')
					lastchar = ''
					for char in word:
						if char in vowels:
							total += 1
						elif char in vowels2:
							if (lastchar not in vowels) and  (lastchar not in vowels2):
								total += 1
						lastchar = char
			f.close()
	return total

def heapLawStats(corpus):
	files = []
	for (dirpath, dirname, filenames) in os.walk(corpus):
	    files.append([dirpath,filenames])

	uniqueWords = []
	totalWords = []
	for direc in files:
		for afile in direc[1]:
			print(direc[0]+'/'+afile)
			f = open(direc[0]+'/'+afile,'r')
			tokens = nltk.word_tokenize(f.read())
			words = set(tokens)
			totalWords.append(len(tokens))
			uniqueWords.append(len(words))
			f.close()

	pairs = zip(totalWords, uniqueWords)
	sorted_pairs = sorted(pairs, key=operator.itemgetter(1))

	for i in range(len(sorted_pairs)):
		totalWords[i] = sorted_pairs[i][0]
		uniqueWords[i] = sorted_pairs[i][1]

	plt.clf()
	plt.plot(totalWords, uniqueWords)
	plt.savefig(corpus + 'heapGraph.png')
	os.system('eog '+ corpus +'heapGraph.png &')

	return zip(totalWords, uniqueWords)

def typeTokenRatio(corpus):
	files = []
	for (dirpath, dirname, filenames) in os.walk(corpus):
	    files.append([dirpath,filenames])

	ratio = []	
	for direc in files:
		for afile in direc[1]:
			print(direc[0]+'/'+afile)
			f = open(direc[0]+'/'+afile,'r')
			tokens = nltk.word_tokenize(f.read())
			terms = set(tokens)
			ratio.append([len(terms),len(tokens)])
			f.close()
	docRatio = [float(doc[0])/doc[1] for doc in ratio]
	corpusRatio = numpy.asarray(ratio)
	return docRatio,float(sum(corpusRatio[:,0]))/sum(corpusRatio[:,1])


#print(totalCVOccurences('../../DATA/Fire/AD_Hoc/Hindi/hi.docs.2011/'))
print(completeStats('./dir/dir'))