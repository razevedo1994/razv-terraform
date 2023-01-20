provider "aws" {
    region = "us-east-1"
    version = "~> 3.0"
}

terraform {
  backend "s3" {
    bucket = "iam-group-razevedo"
    key = "terraform-iam-group.tfstate"
    region = "us-east-1"
  }
}