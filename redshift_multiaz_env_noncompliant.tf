provider "aws" {
  region = "us-east-1"
}

#  Multi-AZ enabled in non-production
resource "aws_redshift_cluster" "cluster_noncompliant" {
  cluster_identifier = "redshift-dev-cluster"
  node_type          = "dc2.large"
  master_username    = "admin"
  master_password    = "Password123!"
  cluster_type       = "single-node"
  multi_az           = true

  tags = {
    Environment = "dev"
  }
}
