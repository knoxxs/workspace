#!/usr/bin/env python
# -*- coding: utf-8 -*-

import math
import numpy
import nltk
import matplotlib.pyplot as plt
import operator
import sys
import os
import collections
import pickle

def wordLengthStats(termStats):
	totalWords = sum(termStats[1])
	lengths = []

	for i in range(len(termStats[0])):
		try:
			lengths.append(len(termStats[0][i].decode('utf-8')))
		except :
			sys.stderr.write('Error Occured\n')
			sys.stderr.write(sys.exc_info())
		if(termStats[1][i] > 1):
			try:
				#for x in range(termStats[1][i] - 1):
				lengths.append(len(termStats[0][i].decode('utf-8')))
			except :
				sys.stderr.write('Error Occured\n')
				sys.stderr.write(sys.exc_info())

	avgLength = float(sum(lengths))/totalWords
	temp = 0
	for val in lengths:
		temp += math.pow((avgLength - val),2)
	standardDeviation = math.sqrt(float(temp)/totalWords) 

	median = numpy.median(numpy.asarray(lengths))
	maxLength = max(lengths)
	minLength = min(lengths)

	return [avgLength, standardDeviation, median, minLength, maxLength, totalWords]

def sentenceLengthStats(data, termStats):
	totalWords = sum(termStats[1])
	lengths = []
	totalSentences = 0
	for doc in data:
		totalSentences += len(doc[1])
		lengths += [len(sentence) for sentence in doc[1]]
	avgLength = float(totalWords)/totalSentences
	temp = 0
	for val in lengths:
		temp += math.pow((avgLength - val),2)
	standardDeviation = math.sqrt(float(temp)/totalSentences)

	median = numpy.median(numpy.asarray(lengths))
	maxLength = max(lengths)
	minLength = min(lengths)

	return [avgLength, standardDeviation, median, minLength, maxLength, totalSentences]
	
def heapLawStats(data, corpusName):
	totalWords = [sum(doc[1],[]) for doc in data]
	uniqueWords = [len(set(doc)) for doc in totalWords]
	totalWords = [len(doc) for doc in totalWords]
	pairs = zip(totalWords, uniqueWords)
	sorted_pairs = sorted(pairs, key=operator.itemgetter(1))

	for i in range(len(sorted_pairs)):
		totalWords[i] = sorted_pairs[i][0]
		uniqueWords[i] = sorted_pairs[i][1]

	plt.clf()
	plt.plot(totalWords, uniqueWords)
	plt.savefig(corpusName + '_heapGraph.png')
	os.system('eog '+ corpusName +'_heapGraph.png &')

	return zip(totalWords, uniqueWords)

def compundTermStats(termStats, totalWords):
	halant = '्'.decode('utf-8')
	total = 0
	for i in range(len(termStats[0])):
		word = termStats[0][i]
		try:
			word = word.decode('utf-8')
		except:
			sys.stderr.write('Error Occured\n')
			sys.stderr.write(sys.exc_info())

		for char in word:
			if char == halant:
				total += 1 * termStats[1][i]
	return float(total)/totalWords

def CVOccurencesStats(termStats, totalWords):
	vowelsTemp = ['ा','ि','ी','ु','ू','े','ै','ो','ौ','ं','ँ',':']
	vowels2Temp = ['अ','आ','इ','ई','उ','ऊ','ए','ऐ','ओ','औ']
	vowels = [i.decode('utf-8') for i in vowelsTemp]
	vowels2 = [i.decode('utf-8') for i in vowels2Temp]

	total = 0
	for i in range(len(termStats[0])):
		word = termStats[0][i]
		try:
			word = word.decode('utf-8')
		except:
			sys.stderr.write('Error Occured\n')
			sys.stderr.write(sys.exc_info())

		lastchar = ''
		for char in word:
			if char in vowels:
				total += 1 * termStats[1][i]
			elif char in vowels2:
				if (lastchar not in vowels) and  (lastchar not in vowels2):
					total += 1 * termStats[1][i]
			lastchar = char

	return float(total)/totalWords

def completeStats(corpus):
	files = []
	for (dirpath, dirname, filenames) in os.walk(corpus):
	    files.append([dirpath,filenames])

	data = []
	for direc in files:
		for afile in direc[1]:
			docPath = direc[0]+'/'+afile;
			print(docPath)
			f = open(direc[0]+'/'+afile,'r')
			sentences = f.read().split('।')
			sentences.pop()
			sentences = [sentence for sentence in sentences if sentence != '']
			tokensPerSentence = [sentence.split() for sentence in sentences]
			data.append([sentences, tokensPerSentence])
			f.close()
	print()
	print("Composing termStats")
	counter = collections.Counter(sum( [sum(d[1],[]) for d in data], []) )
	termStats = [counter.keys(), counter.values()]
	
	print('wordLengthResult')
	wordLengthResult = wordLengthStats(termStats)
	print('sentenceLengthResult')
	sentenceLengthResult = sentenceLengthStats(data, termStats)
	print('typeTokenRatioResult')
	typeTokenRatioResult = float(len(termStats[0]))/sum(termStats[1])
	print('compoundTermsResult')
	compoundTermsResult = compundTermStats(termStats, wordLengthResult[5])
	print('CVOccurencesResult')
	CVOccurencesResult = CVOccurencesStats(termStats, wordLengthResult[5])
	print('heapLawDataResult')
	heapLawDataResult = heapLawStats(data, corpus)

	print('Corpus : ' + corpus + '\nTotal Docs : ' + str(len(data)))
	print("-------------Word Length Stats----------------")
	print('Average Word Length : ' + str(wordLengthResult[0]) + '\nStandard Deviation : ' + str(wordLengthResult[1]) + '\nMedian : ' + str(wordLengthResult[2]) + '\nMin Word Length : ' + str(wordLengthResult[3]) + '\nMax Word Length : ' + str(wordLengthResult[4]) + '\nTotal Words : ' + str(wordLengthResult[5]))
	print("-------------Sentence Length Stats----------------")
	print('Average Sentence Length : ' + str(sentenceLengthResult[0]) + '\nStandard Deviation : ' + str(sentenceLengthResult[1]) + '\nMedian : ' + str(sentenceLengthResult[2]) + '\nMin Sentence Length : ' + str(sentenceLengthResult[3]) + '\nMax Sentence Length : ' + str(sentenceLengthResult[4]) + '\nTotal Sentences : ' + str(sentenceLengthResult[5]))
	print("-------------Type Token Ratio Stats----------------")
	print('type/token : ' + str(typeTokenRatioResult))
	print("-------------Compound Term Stats----------------")
	print('totlal Compound Terms / Total Words : ' + str(compoundTermsResult))
	print("-------------CV Occurences Stats----------------")
	print('Total CV Occurences / Total Words : ' + str(CVOccurencesResult))
	f = open(corpus+'_heapData','w')
	pickle.dump(heapLawDataResult, f)
	f.close()
#completeStats('./test')
completeStats('../../../DATA/Fire/AD_Hoc/Hindi/hi.docs.2011/Clean/hi_AmarUjala')