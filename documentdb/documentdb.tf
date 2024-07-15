resource "aws_docdb_cluster" "mongodb" {
  cluster_identifier     = "mongodb-cluster"
  engine                 = "docdb"
  master_username        = "master"
  master_password        = "yourpassword"
  db_subnet_group_name   = aws_docdb_subnet_group.subng-mongodb.name
  vpc_security_group_ids = [aws_security_group.secg-eks.id]
  skip_final_snapshot    = true
}

resource "aws_docdb_cluster_instance" "mongodb-instance" {
  count              = 1
  identifier         = "mongodb-cluster-instance"
  cluster_identifier = aws_docdb_cluster.mongodb.id
  instance_class     = "db.r5.large"
}