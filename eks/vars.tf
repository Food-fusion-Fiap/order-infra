variable "regionDefault" {
  default = "us-east-1"
}

variable "projectName" {
  default = "order-service"
}

variable "instanceType" {
  default = "t3a.medium"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}

variable "s3_bucket_name" {
  default = "terraform-state-order-academy"
}

variable "principal_arn" {
  default = "arn:aws:iam::431657365754:role/voclabs"
}

variable "lab_role_arn" {
  default = "arn:aws:iam::431657365754:role/LabRole"
}

variable "vpc" {
  description = "VPC"
  default     = "vpc-0fa670a93cef5c2de"
}

variable "subnetA" {
  description = "Subnet A"
  default     = "subnet-0b404abac1af95985"
}

variable "subnetB" {
  description = "Subnet B"
  default     = "subnet-0b2752081365c6e41"
}

variable "subnetC" {
  description = "Subnet C"
  default     = "subnet-0eeeb12770f48c913"
}