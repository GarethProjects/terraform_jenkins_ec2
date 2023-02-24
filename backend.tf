terraform {
  backend "s3" {
    bucket = "demo-bucket-terraform1000"
    key = "terraform2/tfstate.tfstate"
    region = "us-east-2"
  }
}
