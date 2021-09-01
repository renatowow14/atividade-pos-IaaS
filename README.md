# Final work infrastructure as code

![alt text](https://github.com/renatowow14/atividade-pos-IaaS/blob/main/images/image01.png)

## Pre requisitos

 - Node 
 -

# 1 - Install Version Node: 14.4.0

- nvm install v14.4.0

# 2 - User Version Node: 14.4.0

- nvm use v14.4.0

# 2.1 - Install apps in the folder to project referring to the package.json file

- nvm install

# 3 - Deploy Project

- sls deploy -v 

# 3.1 - Deploy Dynamodb

- cd terraform
- terraform init
- terraform plan
- terraform apply --auto-approve

# 4 - Change file request.json to your preference parameters

# 5 - Post to database using curl

curl -d @request.json -H "Content-Type: application/json" \
https://your-url-ramdom.execute-api.us-east-1.amazonaws.com/dev/candidates

# 6 - Get to database post

curl -v https://your-url-ramdom.execute-api.us-east-1.amazonaws.com/dev/candidates

# 6.1 - Get candidate details by their id

curl -v https://your-url-ramdom.execute-api.us-east-1.amazonaws.com/dev/candidates/your_ramdom_id

# 7 - Delete post

curl -X DELETE https://rjts2fqk3d.execute-api.us-east-1.amazonaws.com/dev/candidates/your_id_to_post
