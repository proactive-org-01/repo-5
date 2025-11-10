provider "aws" {
  region = "us-east-1"
}

resource "aws_fsx_lustre_file_system" "fsx_noncompliant" {
  storage_capacity = 1200
  subnet_ids       = ["subnet-123456"]
  deployment_type  = "PERSISTENT_1"
  auto_import_policy = "NONE"
}
