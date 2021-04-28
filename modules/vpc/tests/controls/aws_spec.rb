# frozen_string_literal: true

# load data from Terraform output
content = inspec.profile.file('terraform.json')
params = JSON.parse(content)
VPC_ID = params['vpc_id']['value']

describe aws_vpc('VPC_ID') do
  it { should exist }
end
