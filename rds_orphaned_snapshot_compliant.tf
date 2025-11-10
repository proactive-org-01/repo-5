provider "aws" {
  region = "us-east-1"
}

resource "aws_db_snapshot" "snapshot_compliant" {
  db_snapshot_identifier = "rds-snapshot-valid"
  db_instance_identifier = "mydb-instance"
}
