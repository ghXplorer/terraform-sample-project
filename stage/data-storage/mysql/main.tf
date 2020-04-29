provider "aws" {
  version = "~> 2.50"
  region = "eu-central-1"
}


terraform {
  backend "s3" {
    bucket         = "terraform-sample-project-02032020"
    key            = "stage/data-storage/mysql/terraform.tfstate"
    region         = "eu-central-1"

    dynamodb_table = "terraform-sample-project-locks"
    encrypt        = true
  }
}


resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-sql-example"
  engine              = "mysql"
  allocated_storage   = 20
  instance_class      = "db.t2.micro"
  username            = "admin"
  name                = var.db_name
  skip_final_snapshot = true
  password            = var.db_password
}
