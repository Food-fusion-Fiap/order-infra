provider "aws" {
  region = var.region
  profile = "aws-academy"
}

terraform {
  backend "s3" {
    bucket = "terraform-food-fusion"
    key    = "prod/terraform-postgres.tfstate"
    region = "us-east-1"
  }
}

provider "github" {
  token = var.github_token
  owner = "Food-fusion-Fiap"
}

resource "github_actions_organization_secret" "db_host_secret" {
  secret_name     = "POSTGRES_HOST_ORDER"
  plaintext_value = replace(aws_db_instance.default.endpoint, ":5432", "")
  visibility      = "all"
}