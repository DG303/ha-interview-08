OIDC_ARN := $(shell aws iam list-open-id-connect-providers|jq -r '.OpenIDConnectProviderList[].Arn')
OIDC_URL := $(shell aws iam get-open-id-connect-provider --open-id-connect-provider-arn $(OIDC_ARN) | jq '.Url')

all: core_tf app_tf ingress app_deploy

core_tf:
	cd ./core/terraform/ && terraform init && terraform apply -auto-approve
app_tf:
	cd ./app/terraform/ && terraform init && terraform apply -auto-approve -var 'oidc_arn=$(OIDC_ARN)' -var 'oidc_url=$(OIDC_URL)' 
ingress:
	aws eks --region us-east-1 update-kubeconfig --name ha-interview-08 && helm install nginx ingress-nginx/ingress-nginx -f ./core/helm/nginx/values.yaml	
app_deploy:
	kubectl apply -f ./app/k8s/s3-hello-world.yaml
