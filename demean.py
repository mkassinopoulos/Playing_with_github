# -*- coding: utf-8 -*-
"""
Created on Mon Jul 30 16:25:06 2018

@author: Michalis
"""

import numpy as np

age = np.loadtxt("participants.tsv", skiprows=1, usecols=3)

mean_age = sum(age)/len(age)

np.savetxt("demeaned_age.txt", age-mean_age)

print("done!")