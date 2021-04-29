# APP
## Description:
### Terraform:
* Here I create an app iam role that allows full access to s3 bucket and is trusted the to the k8s oidc.

### K8S:
#### namespace:
* create an app namespace
#### configmap:
* create a configmap with an index.htnl as contents
#### deployment:
* create a deployment that consists of a configmap volume which is mounted to an init contianer and the index.html file is pushed to the s3 bucket and an hello-world nginx container is also deployed that uses the mounted configmap.  I also create the service and service account for this.

