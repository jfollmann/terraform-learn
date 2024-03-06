terraform {
  required_version = "1.7.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws",
      version = "5.39.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
