# Terraform configuration file for AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# AWS Region
provider "aws" {
  region = "us-east-1"
}