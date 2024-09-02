terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "my-aws-data-bucket-for-exp"
    region         = "ap-south-1"
    key            = "Full stack project for eks/terraform.tfstate"
    dynamodb_table = "Lock-Files54"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
