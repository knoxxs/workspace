import numpy as np
import matplotlib.pyplot as mp
import numpy as np
from math import * 

def approxSin(x,y,degree):
	fit_poly = np.polyfit(x,y,degree) #fits a polynomial of given degree
	print "The coefficients are:- "
	print fit_poly
	fit_poly = np.poly1d(fit_poly) #gives a callable method with 
	output = [fit_poly(i) for i in x] #using list comprehension to generate the output
	mp.plot(x,output) #plotting the approximate curve

def plotOriginal():
	x = np.arange(-2,2,0.01)#deciding the input values
	y = [2+0.5*sin(2*i*pi) for i in x] #output of the equation
	mp.plot(x,y)
	return x,y