terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.61.0"
    }
  }


  backend "s3" {
    bucket = "terrastate001"
    key    = "dev/terraform.state"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}