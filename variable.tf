variable "aws_region" {
  description = "The AWS region to deploy to (e.g. us-east-1)"
  type        = string
  default     = "us-west-2"
}

variable "aws_region_code" {
  description = "The AWS region to deploy to (e.g. usea1)"
  type        = string
  default     = "uswe2"
}

variable "tenant" {
  description = "Owner of the service (e.g. cupix)"
  type        = string
  default     = "cupix"
}

variable "service_name" {
  description = "Name of the service (e.g. cupixvista)"
  type        = string
  default     = "cupixworks"
}

variable "service_env" {
  description = "Environment of the service  (e.g. dev, stage, production)"
  type        = string
  default     = "production"
}

variable "node_runtime" {
  description = "The node runtime of the lambda functions"
  type        = string
  default     = "nodejs20.x"
}