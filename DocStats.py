import numpy
import math
import os

files = []
for (dirpath, dirname, filenames) in os.walk("./dir"):
    files.extend(filenames)
    break
totalDocWords = 0
totalDocs = len(files)
maxm = []
minm = []
lengths = [[],[],[]]

for afile in files:
	
	f = open(dirpath+'/'+afile,'r')

	totalChars = 0
	totalWords = 0
	totalSentences = 0

	for line in f:	    
	    totalSentences += 1
	    for word in line.split():
			totalWords += 1
			length = len(word.decode('utf-8'))
			totalChars += length
	
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

print(avgLength, standardDeviation, median, minm, maxm)