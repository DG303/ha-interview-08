# VPC
## Description:
* Uses Community VPC Module to create all the VPC resources
using module example vpc config with minimal modifications
added preconfig and inspec tests / inspec tests aren't working correctly at this time.

## Services Created:

## Variables:
(examples can be found in testing.tfvars or variables.tf)
#### Required:
name
env
cluste_name


#### Optional:
none

#### Outputs:
vpc_id
private_subnets


## pre-commit

* Install the pre-commit package

```
brew install pre-commit
```

* Install the pre-commit hook

```
pre-commit install
```

## Inspec

* Install the required ruby gems

```
bundle install
```

* Run the module to create the aws resource

```
terraform init
terraform apply
```

* Run the Inspec tests

```
terraform output --json > tests/files/terraform.json
inspec exec --no-create-lockfile tests -t aws://
```

* Clean up test environment

```
terraform destroy
```

![Run terraform graph | dot -Tsvg > vpc-graph.svg](./vpc-graph.svg)
