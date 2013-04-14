#!/usr/bin/env python
# -*- coding: utf-8 -*-

import math
import numpy
import sys
import os
import pickle
import simplejson
import fileinput

def compound_CVStats(corpus):
	files = []
	for (dirpath, dirname, filenames) in os.walk(corpus):
	    files.append([dirpath,filenames])
	    
	halant = '्'.decode('utf-8')
	vowelsTemp = ['ा','ि','ी','ु','ू','े','ै','ो','ौ','ं','ँ',':']
	vowels2Temp = ['अ','आ','इ','ई','उ','ऊ','ए','ऐ','ओ','औ']
	vowels = [i.decode('utf-8') for i in vowelsTemp]
	vowels2 = [i.decode('utf-8') for i in vowels2Temp]

	totalDocs = 0
	totalCVOccurences = 0
	totalCompoundTerms = 0
	totalWords = 0
	for direc in files:
		for afile in direc[1]:
			docPath = direc[0]+'/'+afile;
			totalDocs += 1
			print(docPath)
			for line in fileinput.input(docPath, inplace=1):
				print(line)
				words = line.strip().split()
				totalWords += int(words[1])
				try:
					words[0] = words[0].decode('utf-8')
				except:
					sys.stderr.write('Error Occured\n')
					sys.stderr.write(sys.exc_info())

				#Compuond Terms
				total = 0
				for char in words[0]:
					if char == halant:
						total += int(words[1])
				totalCompoundTerms += total
				print "%s: %d" % (line,total)

				#CV OCCURENCES
				lastchar = ''
				total = 0
				for char in words[0]:
					if char in vowels:
						total += 1 * int(words[1])
					elif char in vowels2:
						if (lastchar not in vowels) and  (lastchar not in vowels2):
							total += 1 * int(words[1])
					lastchar = char
				totalCVOccurences += total

				# f.write('\t' + str(total))
				# f.seek(1,1)

			# f.close()

	compound_CVResult = [float(totalCompoundTerms)/totalWords, float(totalCVOccurences)/totalWords, totalWords, totalDocs]

	
	print('\n\n--------------------------Compound AND CV OCCURENCES Result-------------------------------')
	sys.stdout.flush()

	print('Corpus : ' + corpus + '\nTotal Docs : ' + str(compound_CVResult[3]))
	print("-------------Compound AND CV Stats----------------")
	print('Totlal Compound Terms / Total Words: ' + str(compound_CVResult[0]) + '\nTotal CV Occurences / Total Words: ' + str(compound_CVResult[1]) + '\nTotal Words: ' + str(compound_CVResult[2]) )
	sys.stdout.flush()

	f = open('sentenceStatsProgData_pickle_' + str(corpus.split('/')[-3:]),'w')
	pickle.dump({'compound_CVResult': compound_CVResult}, f)
	f.close()


	f = open('sentenceStatsProgData_json' + str(corpus.split('/')[-3:]),'w')
	simplejson.dump({'compound_CVResult': compound_CVResult}, f)
	f.close()


compound_CVStats('../../test/hindi/indexed')
#compound_CVStats('../../../../DATA/Fire/AD_Hoc/Hindi/hi.docs.2011/Clean')