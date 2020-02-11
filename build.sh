#!/bin/bash
curl -O https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip
sleep 5
sudo unzip terraform_0.12.20_linux_amd64.zip -d /usr/bin/
terraform -v
terraform init
terraform apply
