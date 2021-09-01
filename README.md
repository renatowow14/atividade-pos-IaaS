# Final work infrastructure as code

![alt text](https://github.com/renatowow14/atividade-pos-IaaS/blob/main/images/image01.png)

## Pre requisitos

 - NVM
 - Node 14
 - Serverless

## Instalação NVM

Para fazer a instalação dos componentes acima(NVM, node e Serverless), execute 

```
make serverless-setup
chmod +x scripts.sh
./scripts.sh
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 14926  100 14926    0     0  23105      0 --:--:-- --:--:-- --:--:-- 23105
=> nvm is already installed in /Users/bezaleelramos/.nvm, trying to update using git
=> => Compressing and cleaning up git repository
...
v14.4.0 is already installed.
Now using node v14.4.0 (npm v6.14.5)
Now using node v14.4.0 (npm v6.14.5)
...
+ serverless@2.57.0
updated 3 packages in 72.213s
Framework Core: 2.57.0
Plugin: 5.4.4
SDK: 4.3.0
Components: 3.17.0
```
## Deploy do Projeto serverless

Para fazer deploy da aplicação serverless execute:

```
make deploy-serverless
Serverless: Packaging service...
Serverless: Excluding development dependencies...

```


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
