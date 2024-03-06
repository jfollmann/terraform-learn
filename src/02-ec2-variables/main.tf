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
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  tags          = var.instance_tags
}
