variable "aws_region" {
  type        = string
  description = "AWS Region."
  default     = "eu-west-1"
}

variable "environment" {
  description = "the env we are deploying to"
  type        = string
}

variable "iam_role" {
  type        = string
  description = "AWS Role."
  default     = "web_server"
}

variable "aws_instance_type" {
  type        = string
  description = "AWS instance type"
  default     = "t3.nano"
}
