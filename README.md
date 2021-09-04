# Trabalho Final Infraestrutura como Código

![alt text](https://github.com/renatowow14/atividade-pos-IaaS/blob/main/images/image01.png)

## Pre requisitos

 - NVM
 - Node 14
 - Serverless
 - tfenv 
 - AWS CLI com ACCESS KEY



# Passo 1
## Configurar NVM, Node e Serverless

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
# Passo 2
## Setup Terraform

Nos utilizamos o **tfenv** como gerenciador das versões do terraform, o tfenv é inspirado no **rbenv**. A instalação pode ser feito pelo processo de **make**, conforme abaixo

```
make terraform-setup
```

IMPORTANT: Após fazer o setup é necessário configurar o token da aws no **~/.aws/credentials**


# Passo 3
# Provisionamento de  Infraestrutura com Terraform

## DEV

Dentro do diretorio **terraform/** crie um arquivo chamado dev.tfvars

As seguintes variaveis precisam ser informadas:

```
aws_candidate_develop
aws_candidate_email_develop
aws_write_capacity  
aws_read_capacity  
aws_tags_env
```

Em seguida execute o comando make para init,plan e apply passando o ambiente

```
make terraform-init-dev
make terraform-plan-dev
make terraform-apply-dev

```

## PROD

Dentro do diretorio **terraform/** crie um arquivo chamado **prod.tfvars**

As seguintes variaveis precisam ser informadas:

```
aws_candidate_develop
aws_candidate_email_develop
aws_write_capacity  
aws_read_capacity  
aws_tags_env
```

Em seguida execute o comando make para init,plan e apply passando o ambiente:

```
make terraform-init-prod
make terraform-plan-prod
make terraform-apply-prod

```
# Passo 4
## Deploy do Projeto serverless

Para fazer deploy da aplicação serverless execute:

```
make deploy-serverless
Serverless: Packaging service...
Serverless: Excluding development dependencies...

```

# Metodos

Existe um arquivo chamado **insert.json** onde vc pode adicionar os parametros a serem passado na api

EX: 

```
cat request.json
{
  "fullname": "Name",
  "email": "Email@dot.com",
  "experience": 2,
  "skills": "ti",
  "recruiterEmail": "email@dot.com"
}

```

Existe um arquivo chamado **delete.json** onde vc pode adicionar os parametros a serem passado na api

EX: 

```
cat delete.json
{
  "id": "your_random_unique_id"
}

```

## Metodo POST

Use o comando curl para executar o POST:

```
curl -d @insert.json -H "Content-Type: application/json" \
https://your-url-ramdom.execute-api.us-east-1.amazonaws.com/dev/candidates

```

## Metodo GET

Use o comando curl para executar o GET:

```
curl -v https://your-url-ramdom.execute-api.us-east-1.amazonaws.com/dev/candidates
```

## Metodo Delete

Use o comando curl para executar o Delete:

```
curl -d @delete.json -H "Content-Type: application/json" \
https://your-url-ramdom.execute-api.us-east-1.amazonaws.com/dev/removeCandidate/

```

## Consulta detalhada dos candidatos

```
curl -v https://your-url-ramdom.execute-api.us-east-1.amazonaws.com/dev/candidates/your_ramdom_id
```
