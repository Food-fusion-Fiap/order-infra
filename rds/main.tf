provider "aws" {
  region = var.region
  profile = "aws-academy"
}

terraform {
  backend "s3" {
    bucket = "terraform-food-fusion-order"
    key    = "prod/terraform-postgres.tfstate"
    region = "us-east-1"
  }
}

resource "github_actions_organization_secret" "db_host_secret" {
  secret_name     = "POSTGRES_HOST_ORDER"
  plaintext_value = replace(aws_db_instance.default.endpoint, ":5432", "")
  visibility      = "all"
}