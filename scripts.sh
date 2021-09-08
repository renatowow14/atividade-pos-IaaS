#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash  
export NVM_DIR="$HOME/.nvm" 
source ~/.nvm/nvm.sh 
nvm install v14.4.0
nvm use v14.4.0
nvm install
npm install 
npm install -g serverless
sls --version