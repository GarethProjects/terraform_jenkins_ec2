# Terraform Block
terraform {
  required_version = "1.4.2" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "myec2vm" {
  ami           = "ami-0f1a5f5ada0e7da53"
  instance_type = "t2.nano"
  count                  = var.ec2_instance_count
  tags = {
    "Name" = "myec2vm"
  }
}


