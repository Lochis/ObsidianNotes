#Exercise 1
favouriteThings =   'Working Out' \
                    'Burgers' \
                    'Programming'
firstname='Lucas'
lastname="Vandermaarel"
address="1111 My Street"
                    
print(firstname,lastname,address);

print()

#Exercise 2
agileSoftware= []
agileSoftware.insert(0, 'Jira')
agileSoftware.insert(1, 'Git')
agileSoftware.insert(2, 'Gitbucket')
agileSoftware.insert(3, 'CodeGiant')
agileSoftware.insert(4, 'Asana')
agileSoftware.insert(5, 'Trello')
agileSoftware.insert(6, 'Slack')
agileSoftware.insert(7, 'Teams')

del agileSoftware[4] #Asana

print(agileSoftware[5:])

print()

#Exercise 3
print('comp100,comp120,comp213')
courseNames = ['comp100', 'comp120', 'comp213']

print('--- Print personalized ---')
print('You are enrolled in ' + courseNames[0])
print('You are enrolled in ' + courseNames[1])
print('You are enrolled in ' + courseNames[2])
    
courseNames.append('comp200')
print('------ After Append ------')

print('You are enrolled in ' + courseNames[0])
print('You are enrolled in ' + courseNames[1])
print('You are enrolled in ' + courseNames[2])
print('You are enrolled in ' + courseNames[3])
    
print()