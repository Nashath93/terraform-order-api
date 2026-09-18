variable "aws_region" {
  description = "AWS region for infrastructure"
  type        = string
  default     = "ap-southeast-2"
}

variable "table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Team responsible for the infrastructure"
  type        = string
  default     = "CloudEngineering"
}