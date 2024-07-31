provider "aws" {
  region = var.aws_region

  default_tags {
    tags = local.default_tags
  }
}

terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}

  required_version = "~> 1.5.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.9"
    }
  }
}

locals {
  default_tags = {
    Creator     = "terraform"
    Tenant      = var.tenant
    Environment = var.service_env
    Service     = var.service_name
    Region      = var.aws_region
    RegionCode  = var.aws_region_code
  }
}