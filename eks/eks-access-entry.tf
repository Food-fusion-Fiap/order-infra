resource "aws_eks_access_entry" "access-entry" {
  cluster_name      = aws_eks_cluster.eks-cluster.name
  principal_arn     = "arn:aws:iam::690514169119:role/voclabs"
  kubernetes_groups = ["fiap", "challenge"]
  type              = "STANDARD"
}