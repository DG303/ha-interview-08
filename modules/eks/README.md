# EKS
## Description:
* Creates eks cluster and eks worker node

## Services Created:
data.tls_certificate.cluster
aws_eks_cluster.eks-cluster
aws_eks_node_group.eks-worker-node
aws_iam_openid_connect_provider.cluster
aws_iam_role.eks-cluster
aws_iam_role.eks-worker-node
aws_iam_role_policy_attachment.eks-cluster-AmazonEKSClusterPolicy
aws_iam_role_policy_attachment.eks-cluster-AmazonEKSVPCResourceController
aws_iam_role_policy_attachment.eks-node-AmazonEC2ContainerRegistryReadOnly
aws_iam_role_policy_attachment.eks-node-AmazonEKSWorkerNodePolicy
aws_iam_role_policy_attachment.eks-node-AmazonEKS_CNI_Policy
aws_security_group.eks-cluster

## Variables:
(examples can be found in testing.tfvars or variables.tf)
#### Required:
vpc_id
private_subnets
cluste_name


#### Optional:
none

#### Outputs:
role_arn
endpoint
cert_auth
cluster_name

![Run terraform graph | dot -Tsvg > eks-graph.svg](./eks-graph.svg)
