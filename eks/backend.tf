terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "my-ep-demo"
    region         = "ap-south-1"
    key            = "full-stack-project-for-k8-eks/terraform.tfstate"
    dynamodb_table = "Lock-Files5124"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
