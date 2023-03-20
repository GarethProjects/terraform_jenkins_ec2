provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0f1a5f5ada0e7da53"
  instance_type = "t2.nano"
#   count                  = var.ec2_instance_count
}
