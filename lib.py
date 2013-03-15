 # -*- coding: utf-8 -*-

import math
import numpy
import nltk
import matplotlib.pyplot as plt
import operator
import sys
import os
from subprocess import call


def wordLengthStats(corpus):
	call(["text2wfreq", "<corpus >wfreq"])	

	f = open('wfreq','r')

	totalWordLength = 0
	totalWords = 0
	lengths = []
	for line in f:
		temp = line.split()
		length = len(temp[1].decode('utf-8'))
		lengths.append(length)
		totalWordLength += length * temp[2]
		totalWords += temp[2]

	avgWordLength = float(totalWordLength)/totalWords

	temp = 0
	for val in lengths:
		temp += math.pow((avgWordLength - val),2)
	standardDeviation = math.sqrt(temp / len(lengths))

	median = numpy.median(numpy.asarray(lengths))

	return avgWordLength, standardDeviation, median

def sentenceLengthStats(corpus):
	files = []
	for (dirpath, dirname, filenames) in os.walk(corpus):
	    files.append([dirpath,filenames])

	totalSentenceLength = 0
	totalSentences = 0
	lengths = []
	for direc in files:
		for afile in direc[1]:
			print(direc[0]+'/'+afile)
			f = open(direc[0]+'/'+afile,'r')
			sentences = nltk.sent_tokenize(f.read())
			totalSentences += len(sentences)
			for sentence in sentences:
				lengths.append(len(sentence.split()))

	avgSentenceLength = float(sum(lengths))/totalSentences

	temp = 0
	for val in lengths:
		temp += math.pow((avgSentenceLength - val),2)
	standardDeviation = math.sqrt(temp / len(lengths))

	median = numpy.median(numpy.asarray(lengths))

	return avgSentenceLength, standardDeviation, median

print(sentenceLengthStats('../DATA/Fire/AD_Hoc/Hindi/hi.docs.2011/'))