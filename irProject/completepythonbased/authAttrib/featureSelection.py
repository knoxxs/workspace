#!/usr/bin/env python

import pickle
import sys
import numpy as np

if sys.argv[1] == '-h':
	print("Usage: ./featureSelection <n(authorLimit)> <k(SD weight)>")
	sys.exit()

print('reading features')
f = open('../../../dataDump/features.dump', 'r')
features = pickle.load(f)
f.close()

print("Declaring toDel")
toDel = [0] * len(features[0][1][0])
n = int(sys.argv[1])
k = int(sys.argv[2])
c = len(features)
print("Checking k factor")
for i in range(c):
	print("Author:"+str(i))
	feat = np.asarray(features[i][1])
	for j in range(feat.shape[1]):
		if (np.shape(np.where(feat[:,j] == 0)[0])[0]) > k:
			toDel[j] += 1

print("Deleting Features")
for j in range(len(toDel)):
	if toDel[j] > n:
		print("Deleting a Feature")
		for i in range(c):
			feat = np.asarray(features[i][1])
			np.delete(feat,j,1)
			features[i][1] = feat.tolist()

print("Writing Back Features")
f = open('../../../dataDump/featuresSelected.dump', 'w')
pickle.dump(features, f)
f.close()
