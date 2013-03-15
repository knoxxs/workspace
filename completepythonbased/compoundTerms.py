# -*- coding: utf-8 -*-

halant = '्'.decode('utf-8')

f = open('./dir/del','r')

total = 0

for line in f:
    for word in line.split():
		word = word.decode('utf-8')
		for char in word:
			if char == halant:
				total += 1

print(total)

		