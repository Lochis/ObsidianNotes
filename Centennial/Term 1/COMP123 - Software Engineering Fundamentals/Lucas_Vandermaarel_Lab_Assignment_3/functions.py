# Exercise 1
def team_collaboration(soft1, soft2):
    print(f'I use {soft1} amd {soft2} for team collaboration')
    
team_collaboration('Jira', 'Slack')
    
# Exercise 2
project_id = None

def project():
    global project_id
    project_id = 101
    local_project_id = 202
    print(f'My global project id is: {project_id}')
    print(f'My local project id is: {local_project_id}')
    
project()

# Test Print to see if it worked.
print(project_id)