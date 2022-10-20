variable "aws_region" {
  type        = string
  description = "AWS Region."
  default     = "eu-west-1"
}

variable "iam_role" {
  type        = string
  description = "AWS Role."
  default     = "test_role"
}
