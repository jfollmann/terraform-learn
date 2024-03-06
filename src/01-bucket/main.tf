terraform {
  required_version = "1.7.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws",
      version = "5.39.1"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "aws-free-tier"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-149093825798729835"

  tags = {
    Name        = "My Sample Bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Jefferson Follmann"
  }
}
