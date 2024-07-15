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
  default = "arn:aws:iam::690514169119:role/voclabs"
}

variable "lab_role_arn" {
  default = "arn:aws:iam::690514169119:role/LabRole"
}

variable "vpc" {
  description = "VPC"
  default     = "vpc-0babee445384b5d52"
}

variable "subnetA" {
  description = "Subnet A"
  default     = "subnet-051508d09587a68ee"
}

variable "subnetB" {
  description = "Subnet B"
  default     = "subnet-091b65833688d444c"
}

variable "subnetC" {
  description = "Subnet C"
  default     = "subnet-0d46b72a3db090336"
}