provider "aws" {
  region = "us-east-1"
}

resource "aws_redshift_snapshot" "snapshot_compliant" {
  cluster_identifier = "redshift-cluster-1"
  snapshot_identifier = "redshift-snapshot-valid"
}
