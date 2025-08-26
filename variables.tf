variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "region" {
  description = "The AWS region to deploy the resources"
  type        = string
}

variable "k8s_version" {
  description = "The Kubernetes version to deploy"
  type        = string
}

variable "ssm_vpc" {
  description = "The name of the SSM Parameter that contains the VPC ID"
  type        = string
}


variable "ssm_public_subnets" {
  description = "The name of the SSM Parameter that contains the public subnets"
  type        = list(string)
}

variable "ssm_private_subnets" {
  description = "The name of the SSM Parameter that contains the private subnets"
  type        = list(string)
}

variable "ssm_pod_subnets" {
  description = "The name of the SSM Parameter that contains the pod subnet"
  type        = list(string)
}


variable "auto_scale_options" {
  description = "The options for the cluster autoscaler"
  type = object({
    min     = number
    max     = number
    desired = number
  })
}

variable "nodes_instance_sizes" {
  description = "The instance sizes for the EKS nodes"
  type        = list(string)
}