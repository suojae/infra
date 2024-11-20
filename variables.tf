variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-northeast-2"
}

variable "db_password" {
  description = "Database password for RDS"
  type        = string
  sensitive   = true
}
