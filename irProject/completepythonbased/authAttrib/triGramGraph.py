#!/usr/bin/env python

import pickle
import sys
import numpy as np
import matplotlib.pyplot as plt
import itertools
import os

print('reading features')
f = open('../../../dataDump/triGramTagData.dump', 'r')
data = pickle.load(f)
f.close()

f = open('../../../dataDump/authors.dump', 'r')
authors = pickle.load(f)
f.close()

features = []
for dirc in data:
	key = dirc.keys()[0]
	features.append([authors[key.split('/')[-1]],[]])
	files = dirc[key]
	freq = [0] * len(files[0][1][1])
	for fil in files:
		freq = [freq[i] + fil[1][1][i] for i in range(len(freq))]
	features[-1][1] = freq

tags = ['N_NN', 'N_NNP', 'N_NST', 'PR_PRP', 'PR_PRF', 'PR_PRL', 'PR_PRI', 'PR_PRC', 'PR_PRQ', 'DM_DMD', 'DM_DMR', 'DM_DMQ', 'V_VM', 'V_VAUX', 'JJ', 'RB', 'PSP', 'CC_CCD', 'CC_CCS', 'RP_RPD', 'RP_INJ', 'RP_INTF', 'RP_NEG', 'QT_QTF', 'QT_QTC', 'QT_QTO', 'RD_RDF', 'RD_SYM', 'RD_PUNC', 'RD_UNK', 'RD_ECH', 'V_VAUX_VNP', 'DM_DMI', 'CC_CCS_UT']
n = 3
tagsTrigram = [list(x) for x in itertools.product(tags, repeat=n)]

f = open('../../../dataDump/triGramGraph.dump', 'w')
data = pickle.dump(features,f)
f.close()

plt.clf()
for i in range(len(features)):
	plt.plot(range(len(tagsTrigram)), features[i][1], label=str(features[i][0]))

plt.savefig('../../../dataDump/triGramGraph.png')
os.system('eog '+'../../../dataDump/triGramGraph.png &')

for i in range(len(tagsTrigram)):
	print(i,tagsTrigram[i])

f = open('../../../dataDump/triGramfreq.file', 'w')
for i in range(len(features)):
	for freq in features[i][1]:
		f.write(str(freq)+',')
	f.write('\n')
f.close()

f = open('../../../dataDump/triGramNames.dump', 'w')
for i in range(len(tagsTrigram)):
	f.write(str(i) + ',' + tagsTrigram[i][0] + ',' + tagsTrigram[i][1] +  ',' + tagsTrigram[i][2] + '\n')
f.close()
