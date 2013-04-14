# -*- coding: utf-8 -*-

vowelsTemp = ['ा','ि','ी','ु','ू','े','ै','ो','ौ','ं','ँ',':']
vowels2Temp = ['अ','आ','इ','ई','उ','ऊ','ए','ऐ','ओ','औ']

vowels = []
vowels2 = []

for i in vowelsTemp:
	vowels.append(i.decode('utf-8'))

for i in vowels2Temp:
	vowels2.append(i.decode('utf-8'))


f = open('./dir/del','r')

total = 0

for line in f:
    for word in line.split():
		word = word.decode('utf-8')
		lastchar = ''
		for char in word:
			if char in vowels:
				total += 1
			elif char in vowels2:
				if (lastchar not in vowels) and  (lastchar not in vowels2):
					total += 1
			lastchar = char

print(total)

		