provider "aws" {
  region  = var.regionDefault
  profile = "aws-academy"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-order-academy"
    key    = "prod/terraform-eks.tfstate"
    region = "us-east-1"  
  }
}