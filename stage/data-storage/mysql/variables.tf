# ---------------------------------------------------------------------------------------------------------------------
# Supplying password:
# 1) shell var --> $  export TF_VAR_db_password="(YOUR_DB_PASSWORD)"
# 2) AWS Systems Manager Parameter Store
# 3) AWS Secrets Manager --> data "aws_secretsmanager_secret_version"
# ---------------------------------------------------------------------------------------------------------------------


variable "db_password" {
  description = "The password for the database"
  type        = string
}


variable "db_name" {
  description = "The name to use for the database"
  type        = string
  default     = "example_sql_database_stage"
}
