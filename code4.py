# -*- coding:Utf-8 -*-
def table(base):
	result = [] # result est d'abord une liste vide
	n = 1
	while n < 11:
		b = n * base
		result.append(b) # ajout d'un terme à la liste
		n = n +1 # (voir explications ci-dessous)
	return result
