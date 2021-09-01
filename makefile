serverless-setup:
	chmod +x scripts.sh
	./scripts.sh

terraform-setup:

deploy-serverless:
	sls deploy -v 
	
terraform-plan-qa|prod:

terraform-apply-qa|prod:




