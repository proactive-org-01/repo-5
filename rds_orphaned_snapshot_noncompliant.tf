provider "aws" {
  region = "us-east-1"
}

# Snapshot created without db_instance_identifier (orphaned)
resource "aws_db_snapshot" "snapshot_orphaned" {
  db_snapshot_identifier = "rds-snapshot-orphaned"
}
