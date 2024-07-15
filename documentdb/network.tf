resource "aws_docdb_subnet_group" "subng-mongodb" {
  name       = "subng-mongodb"
  subnet_ids = [var.subnetA, var.subnetB, var.subnetC]
}

# Definição da política de segurança para a sub-rede pública
resource "aws_security_group" "mongodb_public_sg" {
  name        = "mongodb_public_sg"
  description = "Allow mongo inbound traffic"
  vpc_id      = var.vpc

  # Permitir tráfego de entrada apenas nas portas necessárias
  ingress {
    from_port   = 27017
    to_port     = 27017
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}