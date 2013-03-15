import math
import numpy

f = open('./dir/del','r')

totalLines = 0
totalLength = 0
lengths = []

for line in f:
		totalLines += 1
		length = len(line.decode('utf-8'))
		totalLength += length
		lengths.append(length)

avgLength = float(totalLength)/float(totalLines)

standardDeviation = 0
for val in lengths:
	standardDeviation += math.pow((avgLength - val),2)

standardDeviation = math.sqrt(standardDeviation / totalLines)

median = numpy.median(numpy.asarray(lengths))

maxLength = max(lengths)
minLength = min(lengths)

print('Total Length is {} and total sentence are {}'.format(totalLength,totalLines))
print('Avg word length {}, standardDeviation is {} and median is {}'.format(avgLength, standardDeviation, median))        
print('Max Length is {} and min Length is {}'.format(maxLength, minLength))