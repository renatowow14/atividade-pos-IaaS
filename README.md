# atividade-pos-IaaS
atividade-pos-IaaS

# 1 - Install Version Node: 14.4.0
- nvm install v14.4.0

# 2 - User Version Node: 14.4.0

- nvm use v14.4.0

# 2.1 - Install apps in the folder to project referring to the package.json file

- nvm install

# 3 - Deploy Project
- sls deploy -v 

# 4 - Change file request.json

# 5 - Post to database using curl

curl -d @request.json -H "Content-Type: application/json" https://your-url-ramdom.execute-api.us-east-1.amazonaws.com/dev/candidates

# 6 - Get to database post

curl -v https://your-url-ramdom.execute-api.us-east-1.amazonaws.com/dev/candidates

# 7 - Delete post

curl -X DELETE https://rjts2fqk3d.execute-api.us-east-1.amazonaws.com/dev/candidates/your_id_to_post
