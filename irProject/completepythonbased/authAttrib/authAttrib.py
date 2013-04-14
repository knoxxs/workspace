#!/usr/bin/env python

import pickle
from sklearn import svm
import gc
from random import shuffle

print("reading features....")
f = open('../../../dataDump/featuresSelected.dump', 'r')
features = pickle.load(f)
f.close()

print("Spliting Input Output")
x,y = [],[]
for auth in features:
	y = y + ( [auth[0]] * len(auth[1]) )
	for fil in auth[1]:
		x.append(fil)

del features[:]
gc.collect()

print("Dividing data - training and testing")
total = len(y)
trainLen = 80 * total / 100
testLen = total - trainLen + 1
print('Total' + str(total))
x_shuf = []
y_shuf = []
index_shuf = range(len(y))
shuffle(index_shuf)
for i in index_shuf:
    x_shuf.append(x[i])
    y_shuf.append(y[i])

trainX = x_shuf[:trainLen]
trainY = y_shuf[:trainLen]
testX = x_shuf[testLen:]
testY = y_shuf[testLen:]

print("Applying SVM")
clf = svm.SVC()
clf.fit(trainX, trainY)

print("support vectors")
print(clf.support_vectors_)

print("indices of support vectors")
print(clf.support_)

print("number of support vectors for each class")
print(clf.n_support_)

print("# of Classifiers Used:")
#print(clf.decision_function([[1]]).shape[1])
print("Calculating Error")

f = open('../../../dataDump/authors.dump', 'r')
authors = pickle.load(f)
f.close()

authorWiseAccuracy = [0] * len(authors)
error = 0
for i  in range(testLen):
	if clf.predict(testX[i])[0] != testY[i]:
		error += 1
	else:
		authorWiseAccuracy[i] += 1

print("Error (Misclassified/Total):" + str(float(error)/testLen))
print("Accurace Other Wise:")
print(authorWiseAccuracy)
print(authors)

print("trainSize: " + str(trainLen) + ",testLen: " + str(testLen))

print("Reduced Features:" + str(len(testX[0])))