provider "aws" {
  region  = var.regionDefault
  profile = "xpto"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-group-18-order-academy"
    key    = "prod/terraform-eks.tfstate"
    region = "us-east-1"  
  }
}