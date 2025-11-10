provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "rds_compliant" {
  identifier              = "rds-prod-instance"
  allocated_storage       = 50
  engine                  = "mysql"
  instance_class          = "db.t3.micro"
  username                = "admin"
  password                = "Password123!"
  multi_az                = true
  skip_final_snapshot     = true

  tags = {
    Environment = "production"
  }
}
