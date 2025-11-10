provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "rds_compliant" {
  identifier              = "rds-small-instance"
  allocated_storage       = 80
  engine                  = "postgres"
  instance_class          = "db.t3.micro"
  username                = "admin"
  password                = "Password123!"
  skip_final_snapshot     = true
}
