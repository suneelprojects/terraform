provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWIBQPDIZ4SHKBHWF"
  secret_key = "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"
}

resource "aws_instance" "ec2-Instance-1" {
  ami = "ami-0f9ce67dcf718d332"
  instance_type = "t2.micro"
  subnet_id = "subnet-00ad507fea4b45014"
  key_name = "test"
  tags ={
    Name = "EC2-Instance-1"
  }
}

resource "aws_instance" "ec2-Instance-2" {
  ami = "ami-0f9ce67dcf718d332"
  instance_type = "t2.micro"
  subnet_id = "subnet-00ad507fea4b45014"
  key_name = "test"
  tags ={
    Name = "EC2-Instance-2"
  }
}
