terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.71.0"
    }
  }
  backend "s3" {
    bucket = "terraformstate2024cicd"
    key ="dev/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  # Configuration options
  region     = "us-east-1"

}