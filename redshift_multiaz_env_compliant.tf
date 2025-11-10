provider "aws" {
  region = "us-east-1"
}

resource "aws_redshift_cluster" "cluster_compliant" {
  cluster_identifier = "redshift-prod-cluster"
  node_type          = "dc2.large"
  master_username    = "admin"
  master_password    = "Password123!"
  cluster_type       = "single-node"
  multi_az           = true

  tags = {
    Environment = "production"
  }
}
