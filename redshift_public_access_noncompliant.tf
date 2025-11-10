provider "aws" {
  region = "us-east-1"
}

# ❌ Cluster made publicly accessible
resource "aws_redshift_cluster" "cluster_noncompliant" {
  cluster_identifier = "redshift-public-cluster"
  node_type          = "dc2.large"
  master_username    = "admin"
  master_password    = "Password123!"
  cluster_type       = "single-node"
  publicly_accessible = true
}
