import os
import nltk
import matplotlib.pyplot as plt
import operator
import sys

files = []
for (dirpath, dirname, filenames) in os.walk(sys.argv[1]):
    files.extend(filenames)
    break

uniqueWords = []
totalWords = []
for afile in files:
	f = open(dirpath+'/'+afile,'r')
	tokens = nltk.word_tokenize(f.read())
	words = set(tokens)
	totalWords.append(len(tokens))
	uniqueWords.append(len(words))
	f.close()


pairs = zip(totalWords, uniqueWords)
sorted_pairs = sorted(pairs, key=operator.itemgetter(1))

print(sorted_pairs,len(sorted_pairs))

for i in range(len(sorted_pairs)):
	totalWords[i] = sorted_pairs[i][0]
	uniqueWords[i] = sorted_pairs[i][1]

print(totalWords,uniqueWords,len(totalWords),len(uniqueWords))

plt.clf()
plt.plot(totalWords, uniqueWords)
plt.savefig('heapGraph.png')
os.system('eog heapGraph.png &')
