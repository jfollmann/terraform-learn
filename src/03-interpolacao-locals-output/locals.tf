locals {
  common_tags = {
    Service     = "Curso Terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Jefferson Follmann"
  }
  people_filepath = "peoples.json"
}