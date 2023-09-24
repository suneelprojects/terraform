
terraform {
required_version = ">=1.1.8"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.12.0"
    }
  }
}


provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWIBQPDIZ4SHKBHWF"
  secret_key = "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"
}



resource "aws_instance" "ec2" {
  ami = "ami-0453898e98046c639"
  instance_type = "t2.medium"
  subnet_id = "subnet-00ad507fea4b45014"
  tags ={
    Name = "tf-example"
  }
}
