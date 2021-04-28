# Terraform State Backend
## Description:
* Creates s3 bucket for shared state files and ddb table for lock files
* Not used in demo but example of terraform backend

## Services Created:
s3_bucket
dynamodb table

## Variables:
(examples can be found in testing.tfvars or variables.tf)
#### Required:
bucket_name
ddb_name


#### Optional:
none

#### Outputs:
s3_bucket_arn
dynamodb_table_name
