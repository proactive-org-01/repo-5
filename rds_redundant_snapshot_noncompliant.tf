provider "aws" {
  region = "us-east-1"
}

# Two snapshots for same DB instance - redundant
resource "aws_db_snapshot" "snapshot_1" {
  db_snapshot_identifier = "rds-snapshot-1"
  db_instance_identifier = "mydb-instance"
}

resource "aws_db_snapshot" "snapshot_2" {
  db_snapshot_identifier = "rds-snapshot-2"
  db_instance_identifier = "mydb-instance"
}
