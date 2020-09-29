#!/bin/bash

# Create AWS S3 bucket to store Terraform output
#
cd s3
terraform init -var-file="../terraform/terraform.tfvars" 
terraform plan -var-file="../terraform/terraform.tfvars" 
terraform apply -var-file="../terraform/terraform.tfvars" --auto-approve

# Create infrastructure in AWS
#
cd ../terraform
terraform init 
terraform plan
terraform apply --auto-approve 
