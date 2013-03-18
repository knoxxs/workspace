import numpy as np
import matplotlib.pyplot as mp
import numpy as np
from math import *   
def approxSinc(x,y,degree):
# fit_poly=np.polyfit(x,y,degree)  
	fit_poly = np.polyfit(x,y,degree)
	# print "The coefficients are:- "
	# print fit_poly
	fit_poly = np.poly1d(fit_poly)		#gives a callable method with 
	output = [fit_poly(i) for i in x]	#using list comprehension to generate the output

	error = 0
	for k in np.arange(-10,10,0.01):
		my_val = fit_poly(k)
		original = sin(i)/i
		error+=fabs(my_val-original)

	return error,output

def plotOriginal():
	x = np.arange(-10,10,0.01)	#deciding the input values
	y = [sin(i)/i for i in x]    #output of the equation
	mp.plot(x,y)
	mp.savefig('sync.jpg')
	mp.clf()
	return x,y
def main():
	x,y = plotOriginal()
	errors = []
	for l in range(1,20):
		error,output = approxSinc(x, y, l)
		errors.append(error)
		mp.plot(x,output) #plotting the approximate curve
		mp.savefig('pol_' + str(l) +'.jpg')
		mp.clf()

	mp.plot(range(1,20),errors)
	mp.savefig('error.jpg')
	mp.clf()