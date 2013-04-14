#!/usr/bin/env python

import sys
import itertools
import collections
import pickle

def calFeture(nGramSize, inputFile, pickStoreFile):
	try:
		tags = ['N_NN', 'N_NNP', 'N_NST', 'PR_PRP', 'PR_PRF', 'PR_PRL', 'PR_PRI', 'PR_PRC', 'PR_PRQ', 'DM_DMD', 'DM_DMR', 'DM_DMQ', 'V_VM', 'V_VAUX', 'JJ', 'RB', 'PSP', 'CC_CCD', 'CC_CCS', 'RP_RPD', 'RP_INJ', 'RP_INTF', 'RP_NEG', 'QT_QTF', 'QT_QTC', 'QT_QTO', 'RD_RDF', 'RD_SYM', 'RD_PUNC', 'RD_UNK', 'RD_ECH', 'V_VAUX_VNP', 'DM_DMI', 'CC_CCS_UT']
		n = int(nGramSize)
		tagsTrigram = [list(x) for x in itertools.product(tags, repeat=n)]
		tagsTrigramFrequency = [0] * len(tagsTrigram)
		fr = open(inputFile,'r')

		sentences = fr.readlines()
		fr.close()
		sentences.pop() # removing last '\n'
		sentences = [sentence for sentence in sentences if sentence != '']

		triGram = ['', '', '']


		triGram[0] = sentences[0]
		triGram[1] = sentences[1][:-1]
		triGram[2] = sentences[2][:-1]

		for word in sentences[2:]:
			if(word == '\n'):
				triGram[0] = fr.readline()[:-1]
				triGram[1] = fr.readline()[:-1]
				triGram[2] = fr.readline()[:-1]
			else:
				triGram = triGram[1:] + triGram[:1] #rotating the list to left by 1
				triGram[2] = word[:-1]
			tagsTrigramFrequency[ tagsTrigram.index(triGram) ] += 1

		pickFile = open(pickStoreFile, 'w')
		pickle.dump([tagsTrigram, tagsTrigramFrequency], pickFile)
		pickFile.close()

		return [tagsTrigram, tagsTrigramFrequency]
	except :
		sys.stderr.write('Error Occured\n')
		sys.stderr.write(str(sys.exc_info()))
		pass
