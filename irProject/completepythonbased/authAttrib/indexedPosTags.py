#!/usr/bin/env python

import posTagsToTriGramFrequency as pt
import math
import os
import itertools
import sys
import json

tags = pt.getTags()

def indexedPosTagsMatrix(text, avgLen):
	words = text.strip().split()
	textLen = len(words)

	matrix = {}
	for tag in tags:
		matrix[tag] = [0] * avgLen

	wordsIter = iter(words)
	
	if textLen > avgLen:
		ratio = int(math.ceil(float(textLen)/avgLen))
		xb = textLen - avgLen * (ratio - 1) # xb is no of pairs with word size of ratio mapped to one word each
		xs = avgLen - xb 					# xs is no of pairs with word size of (ratio - 1) mapped to one word each
		for i in range(xb):
			for j in range(ratio):
				matrix[wordsIter.next()][i] += 1

		for i in range(xb, avgLen ): #avgLen = xb + xs
			for j in range(ratio - 1):
				matrix[wordsIter.next()][i] += 1

	if avgLen > textLen:
		ratio = int(math.ceil(float(avgLen)/textLen))
		xb = avgLen - textLen * (ratio - 1) # xb is no of words which will each map to pair of size ratio
		xs = avgLen - xb 					# xs is no of words which will each map to pair of size (ratio - 1)
		for i in range(xb):
			word = wordsIter.next()
			for j in range(ratio):
				matrix[word][i * ratio + j] += 1

		for i in range(xb, textLen ): #avgLen = xb + xs
			word = wordsIter.next()
			for j in range(ratio - 1):
				matrix[word][ xb * ratio + (i - xb) * (ratio - 1) + j ] += 1

	for tag in matrix:
		for i in range(avgLen):
			matrix[tag][i] = float(matrix[tag][i]) / textLen
	
	return matrix

def docBased(corpus, avgLen, folder):
	files = []
	for (dirpath, dirname, filenames) in os.walk(corpus):
		files.append([dirpath,filenames])
	files = files[1:]

	fProfile = open('../../../../dataDump/' + folder +'/profileMatrices','w')
	fInstance = open('../../../../dataDump/' + folder +'/instanceMatrices','w')
	authors = {}
	for direc in files:
		author = direc[0].split('/')[-1]
		authors[author] = {}
		fInstance.write(direc[0].split('/')[-1] + '\n')
		flag = 0
		totalDocs = 0
		for afile in direc[1]:
			totalDocs += 1
			docPath = direc[0]+'/'+afile;
			fr = open(docPath,'r')
			sentences = fr.readlines()
			fr.close()

			if(len(sentences) == 0):
				continue

			sentences.pop() # removing last '\n'
			text = ''
			for sentence in sentences:
				if sentence != '' or sentence != '\n':
					text += sentence[:-1] + ' '
			tempMatrix = indexedPosTagsMatrix(text, avgLen)
			
			if flag == 0:
				authors[author] = tempMatrix
				flag = 1
			else:
				for key in tempMatrix:
					authors[author][key] = [(x+y) for x,y in itertools.izip(authors[author][key],tempMatrix[key])]
			
			for tag in tags:
				for doc in tempMatrix[tag]:
					fInstance.write(str(doc) + ' ')
				fInstance.write('\n')
			fInstance.write('\n')
		for tag in tags:
			for i in range(avgLen):
				authors[author][tag][i] = authors[author][tag][i] / totalDocs


		print(direc[0])
	json.dump(authors, fProfile)
	fProfile.close()


def sentenceBased(corpus, avgLen, folder):
	files = []
	for (dirpath, dirname, filenames) in os.walk(corpus):
		files.append([dirpath,filenames])
	files = files[1:]

	fProfile = open('../../../../dataDump/' + folder +'/profileMatrices','w')
	fInstance = open('../../../../dataDump/' + folder +'/instanceMatrices','w')
	authors = {}
	for direc in files:
		author = direc[0].split('/')[-1]
		authors[author] = {}
		fInstance.write(direc[0])
		flag = 0
		totalDocs = 0
		for afile in direc[1]:
			totalDocs += 1
			docPath = direc[0]+'/'+afile;
			fr = open(docPath,'r')
			sentences = fr.readlines()
			fr.close()

			if(len(sentences) == 0):
				continue

#			sentences.pop() # removing last '\n'
			text = ''
			sentenceFlag = 0
			totalSentence = 0
			for sentence in sentences:
				if sentence != '\n':
					if sentence != '':
						text += sentence[:-1] + ' '
				else:
					totalSentence += 1
					tempSentenceMatrix = indexedPosTagsMatrix(text, avgLen)
					if sentenceFlag == 0:
						tempMatrix = tempSentenceMatrix
						sentenceFlag = 1
					else:
						for key in tempSentenceMatrix:
							tempMatrix[key] = [(x+y) for x,y in itertools.izip(tempMatrix[key],tempSentenceMatrix[key])]
					text=''
			
			for tag in tags:
				for i in range(avgLen):
					tempMatrix[tag][i] = tempMatrix[tag][i] / totalSentence

			if flag == 0:
				authors[author] = tempMatrix
				flag = 1
			else:
				for key in tempMatrix:
					authors[author][key] = [(x+y) for x,y in itertools.izip(authors[author][key],tempMatrix[key])]

			for tag in tags:
				for doc in tempMatrix[tag]:
					fInstance.write(str(doc) + ' ')
				fInstance.write('\n')
			

		for tag in tags:
			for i in range(avgLen):
				authors[author][tag][i] = authors[author][tag][i] / totalDocs

		print(direc[0])
	json.dump(authors, fProfile)
	fProfile.close()

#print(indexedPosTagsMatrix('N_NN JJ N_NNP DM_DMD N_NNP N_NST', 10))

#docBased('../test/gujarati/tagged', 4, 'indexPosTagsDoc')

#sentenceBased('../test/gujarati/tagged', 4, 'indexPosTagsSentence')

if sys.argv[1] == '-h':
	print("Usage: ./indexPosTags <-d/-s> <avgLen> <corpus> <folder>")
	sys.exit()

if sys.argv[1] == '-s':
	sentenceBased(sys.argv[3], int(sys.argv[2]), sys.argv[4])

if sys.argv[1] == '-d':
	docBased(sys.argv[3], int(sys.argv[2]), sys.argv[4])
