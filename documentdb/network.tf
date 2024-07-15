resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
}

# resource "aws_subnet" "private" {
#   count             = 2
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = "10.0.${count.index}.0/24"
#   availability_zone = element(["us-west-2a", "us-west-2b"], count.index)
# }

resource "aws_security_group" "secg-eks" {
  vpc_id = local.aws_vpc_id

  ingress {
    from_port   = 27017
    to_port     = 27017
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_docdb_subnet_group" "subng-mongodb" {
  name       = "mongodb-subnet-group"
  subnet_ids = [local.aws_public_subnet_id, local.aws_public_subnet2_id]
}