provider "aws" {
  region = "us-east-1"
}

resource "aws_redshift_cluster" "cluster" {
  cluster_identifier = "redshift-cluster-1"
  node_type          = "dc2.large"
  master_username    = "admin"
  master_password    = "Password123!"
  cluster_type       = "single-node"
}

resource "aws_redshift_snapshot_schedule" "schedule" {
  identifier = "schedule-compliant"
  definitions = ["rate(12 hours)"]
}

resource "aws_redshift_snapshot_schedule_association" "assoc" {
  cluster_identifier = aws_redshift_cluster.cluster.id
  schedule_identifier = aws_redshift_snapshot_schedule.schedule.id
}
