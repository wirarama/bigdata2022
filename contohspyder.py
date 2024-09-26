# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
a = 6
b = 7
c = a+b
from random import randint
d = [] #mendeklarasikan
for i in range(500):
  d.append([randint(29,36),randint(50,80),randint(11000,16000),randint(32,38)])
for x in d:
  print(x)