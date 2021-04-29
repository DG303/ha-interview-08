# DEMO
## Description:
* Creates a kuberentes cluster in a new vpc,  and an s3 bucket.  I create an nginx-ingress-controller using helm in the default namespace.  I created a new namespace, configmap, deployment, service, and service account. In the deployment I have an init container that sync the config map to a s3 bucket and a hello-world nginx container that uses the configmap index.html file.  Although this is a single repo, I tried to lay it out in a way that would show how I would split the repos up normally. I have README's in each section that explains each piece better. 
