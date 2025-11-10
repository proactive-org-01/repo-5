provider "aws" {
  region = "us-east-1"
}

resource "aws_fsx_lustre_file_system" "fsx_compliant" {
  storage_capacity               = 1200
  subnet_ids                     = ["subnet-123456"]
  automatic_backup_retention_days = 90
}
