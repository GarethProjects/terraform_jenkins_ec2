# # Terraform Block
# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~>4.0"
#     }
#   }
# }


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


