terraform {
  backend "s3" {
    bucket = "terraform-state-group-18-order-academy"
    key    = "prod/terraform-postgres.tfstate"
    region = "us-east-1"
  }
}
