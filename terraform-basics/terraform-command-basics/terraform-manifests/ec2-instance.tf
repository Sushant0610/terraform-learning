# Terraform Settings Block
terraform {
    required_version = "~> 1.5"
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
      }
    }
}

# Provider Block
provider "aws" {
  profile = "iamadmin"
  region = "us-east-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami = "ami-0e731c8a588258d0d"
  instance_type = "t2.micro"
}