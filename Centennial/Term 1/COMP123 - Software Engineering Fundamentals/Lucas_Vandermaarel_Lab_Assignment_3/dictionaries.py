#Exercise 1
favorite_languages = {
    'jen': 'HTML',
    'sarah': 'c',
    'edward': 'ruby',
    'phil': 'C#',
}
    # change C# to Python at phil
favorite_languages['phil'] = 'Python'

    # add item
favorite_languages['lucas'] = 'Java'

    # remove item
favorite_languages.pop('jen')

    # list all items
for val in favorite_languages:
    print(favorite_languages[val])
    

#Exercise 2
student = {
    'student name': 'Lucas Vandermaarel',
    'age': 24,
    'subject': 'Software Engineering',
    'semester': 'Fall 2024',
    'grade': 99.9,
    'lab': 3
}

for stu in student:
    print('key: ' + student[stu] + student.get(stu))