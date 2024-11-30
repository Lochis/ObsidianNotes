# Exercise 1

import datetime
import calendar

current_year = datetime.datetime.now().year

october= calendar.month(current_year, 10)
print(october)


# Exercise 2
import math

print (math.sqrt(16))
print (math.pow(2, 3))
print (math.sin(90))
print (math.log(10, 2))
print (math.dist([1, 2, 3], [4, 5, 6]))

print()

# Exercise 3
import os

# make directory
os.mkdir('new_dir')

# list parent directory of new_dir out to show it was created
print(os.listdir('.'))

# delete directory
os.rmdir('new_dir')
