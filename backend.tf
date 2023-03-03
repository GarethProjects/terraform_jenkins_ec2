terraform {
  backend "s3" {
    bucket = "demo-bucket-terraform1000"
    key = "terraformec2only/tfstate.tfstate"
    region = "us-east-1"
  }
}
