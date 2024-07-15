provider "aws" {
  region  = var.regionDefault
  profile = "aws-academy"
}

terraform {
  backend "s3" {
    bucket = "terraform-food-fusion-order"
    key    = "prod/terraform-eks.tfstate"
    region = "us-east-1"  
  }
}