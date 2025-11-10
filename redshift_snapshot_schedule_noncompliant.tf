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

# Two schedules for same cluster (redundant)
resource "aws_redshift_snapshot_schedule" "schedule_1" {
  identifier = "schedule-1"
  definitions = ["rate(12 hours)"]
}

resource "aws_redshift_snapshot_schedule" "schedule_2" {
  identifier = "schedule-2"
  definitions = ["rate(6 hours)"]
}

resource "aws_redshift_snapshot_schedule_association" "assoc_1" {
  cluster_identifier  = aws_redshift_cluster.cluster.id
  schedule_identifier = aws_redshift_snapshot_schedule.schedule_1.id
}

resource "aws_redshift_snapshot_schedule_association" "assoc_2" {
  cluster_identifier  = aws_redshift_cluster.cluster.id
  schedule_identifier = aws_redshift_snapshot_schedule.schedule_2.id
}
