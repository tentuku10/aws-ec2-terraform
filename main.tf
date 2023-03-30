# ------------------------------
# Terraform configuration
# ------------------------------
terraform {
  # Assumes s3 bucket and dynamo DB table already set up
  backend "s3" {
    bucket         = "aws-ec2-terraform-tfstate"
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "aws-ec2-terraform-tfstate-locking"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# ------------------------------
# Provider
# ------------------------------
provider "aws" {
  region = local.region
}

# ------------------------------
# Vaiables
# ------------------------------
variable "project" {
  type = string
}
variable "environment" {
  type = string
}