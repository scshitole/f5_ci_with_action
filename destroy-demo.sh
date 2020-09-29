#!/bin/bash

# Destory the infrastructure in AWS
#
cd terraform
terraform destroy --auto-approve 

# Destory the S3 bucket in AWS
#
cd ../s3
terraform destroy --auto-approve

