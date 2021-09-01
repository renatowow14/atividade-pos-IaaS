TFENV := $(shell test -f ~/.tfenv ; echo $$? )

serverless-setup:
	chmod +x scripts.sh
	./scripts.sh

terraform-setup:
ifneq ($(TFENV),0)
				@echo "TFENV Installed"
				tfenv install
else
				@echo "TFENV not installed, installing.."	
				@git clone https://github.com/tfutils/tfenv.git ~/.tfenv
				echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile
	 			tfenv install
endif

deploy-serverless:
	sls deploy -v 

terraform-plan-qa|prod:

terraform-apply-qa|prod:




