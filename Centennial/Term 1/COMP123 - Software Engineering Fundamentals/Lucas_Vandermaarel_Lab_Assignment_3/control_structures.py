# Exercise 1
temperature = input('Please enter the temperature: ')
if temperature < '98':
    print('Cold!')
elif temperature > '98':
    print('Hot!')
else:
    print('Normal.')

print()

# Exercise 2
agile_values = ['Individuals and interactions', 'Working software ', 'Customer collaboration ','Responding to change']
for val in agile_values:
    print(val)