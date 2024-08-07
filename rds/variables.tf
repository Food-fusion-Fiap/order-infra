variable "region" {
  description = "The region where resources will be created and state will be stored"
  default     = "us-east-1"
}

variable "db_password" {
  description = "Password for the database"
  default     = ""
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "The name of the database"
  default     = ""
}

variable "db_username" {
  description = "The username for the database"
  default     = ""
}

variable "project_name" {
  description = "The name of the project"
  default     = "food_fusion"
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