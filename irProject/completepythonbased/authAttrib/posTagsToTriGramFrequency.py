#!/usr/bin/env python

import sys
import itertools
import collections
import pickle
import traceback

tags = ['N_NN', 'N_NNP', 'N_NST', 'PR_PRP', 'PR_PRF', 'PR_PRL', 'PR_PRI', 'PR_PRC', 'PR_PRQ', 'DM_DMD', 'DM_DMR', 'DM_DMQ', 'V_VM', 'V_VAUX', 'JJ', 'RB', 'PSP', 'CC_CCD', 'CC_CCS', 'RP_RPD', 'RP_INJ', 'RP_INTF', 'RP_NEG', 'QT_QTF', 'QT_QTC', 'QT_QTO', 'RD_RDF', 'RD_SYM', 'RD_PUNC', 'RD_UNK', 'RD_ECH', 'V_VAUX_VNP', 'DM_DMI', 'CC_CCS_UT']

#TODO: Do this in init
tagsnGram = []
def init(nGramSize):
	global tagsnGram
	tagsnGram = [list(x) for x in itertools.product(tags, repeat=nGramSize)]

def getTags():
	return tags

def calFeature(nGramSize, inputFile, pickStoreFile):
	try:
		n = int(nGramSize)

		tagsnGramFrequency = [0] * len(tagsnGram)
		fr = open(inputFile,'r')

		sentences = fr.readlines()
		fr.close()

		if(len(sentences) == 0):
			return []

		sentences.pop() # removing last '\n'
		sentences = [sentence for sentence in sentences if sentence != '']

		nGram = [''] * n
		totalWords = 0
		#for initial startup
		for i in range(n):
			nGram[i] = sentences[i][:-1]
			totalWords = 1
		tagsnGramFrequency[ tagsnGram.index(nGram) ] += 1
		#[:-1] to remove last \n from each tag

		flag = 0
		for word in sentences[n:]:
			if(word == '\n'):
				flag = n
			elif flag > 0:
				nGram[n - flag] = word[:-1]
				flag -= 1
			else:
				#nGram = nGram[1:] + nGram[:1] #rotating the list to left by 1
				nGram = nGram[1:] + [''] #dont adding the last element
				nGram[n - 1] = word[:-1]
			if flag == 0:
				totalWords += 1
				tagsnGramFrequency[ tagsnGram.index(nGram) ] += 1
		# pickFile = open(pickStoreFile, 'w')
		# pickle.dump([tagsnGram, tagsnGramFrequency], pickFile)
		# pickFile.close()

		for i in range(len(tagsnGramFrequency)):
			tagsnGramFrequency[i] = float(tagsnGramFrequency[i])/totalWords
		return tagsnGramFrequency

	except :
		sys.stderr.write('Error Occured\n')
		sys.stderr.write(str(sys.exc_info()))
		traceback.print_exc()

		pass

#calFeature(2, '../test/gujarati/tagged/shat40_20101222.txt.tags', '../test/gujarati/tagged/del')