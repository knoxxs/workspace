import math
import numpy

f = open('del','r')

totalWords = 0
totalLength = 0
lengths = []

for line in f:
    for word in line.split():
		totalWords += 1
		length = len(word.decode('utf-8'))
		totalLength += length
		lengths.append(length)

avgLength = float(totalLength)/float(totalWords)

standardDeviation = 0
for val in lengths:
	standardDeviation += math.pow((avgLength - val),2)

standardDeviation = math.sqrt(standardDeviation / totalWords)

median = numpy.median(numpy.asarray(lengths))

maxLength = max(lengths)
minLength = min(lengths)

print('Total Length is {} and total words are {}'.format(totalLength,totalWords))
print('Avg word length {}, standardDeviation is {} and median is {}'.format(avgLength, standardDeviation, median))
print('Max Length is {} and min Length is {}'.format(maxLength, minLength))

#print( avgLength, standardDeviation, median, minLength, maxLength)