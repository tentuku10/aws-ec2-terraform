# ------------------------------
# Terraform configuration
# ------------------------------
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    bucket  = "aws-ec2-terraform-tfstate"
    key     = "terraform.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform"
  }
}

# ------------------------------
# Provider
# ------------------------------
provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
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