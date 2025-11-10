provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "rds_noncompliant" {
  identifier              = "rds-large-instance"
  allocated_storage       = 200
  engine                  = "postgres"
  instance_class          = "db.t3.micro"
  username                = "admin"
  password                = "Password123!"
  skip_final_snapshot     = true
}
