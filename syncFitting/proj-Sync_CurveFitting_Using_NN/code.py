import numpy as np
import pybrain
import math
from matplotlib import pyplot as ppt
from pybrain.tools.shortcuts import buildNetwork
from pybrain.datasets import SupervisedDataSet
from pybrain.supervised.trainers import BackpropTrainer

TOTAL_EPOCH = 10
INPUT = np.arange(-5,5,0.01)
def genearateData():
	x = INPUT
	y = INPUT
	z = []
	for i in range(len(x)):
		z.append((math.sin(x[i]) * math.sin(y[i])) / (x[i] * y[i]))
	ppt.plot(z)
	ppt.savefig('sync.jpg')
	ppt.clf();
	return x,y,z

def buildDataSet():
	x,y,z = genearateData()
	ds = SupervisedDataSet(2, 1)
	for i in range(len(x)):
		ds.addSample((x[i], y[i]), (z[i],))
	return ds

def steps():
	net = buildNetwork(2, 4, 4, 4, 1, bias=True)
	ds = buildDataSet()
	trainer = BackpropTrainer(net, ds, learningrate=0.2, momentum=0.2)
	error = []
	for epoch in range(TOTAL_EPOCH):
		error.append(trainer.train())

	netOutput = []
	for i in range(len(ds)):
		netOutput.append(net.activate([ ds['input'][i,0], ds['input'][i,1] ]))

	ppt.plot(range(1,TOTAL_EPOCH + 1), error)
	ppt.savefig('error.jpg')
	ppt.clf()

	ppt.plot(INPUT, ds['target'])
	ppt.plot(INPUT, netOutput)
	ppt.savefig('comparision.jpg')
	ppt.clf()	