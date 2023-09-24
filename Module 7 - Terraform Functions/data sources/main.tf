provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWIBQPDIZ4SHKBHWF"
  secret_key = "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"
}


data "aws_ami" "ami_id" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-*"]
  }
}


resource "aws_instance" "ec2" {
  ami = data.aws_ami.ami_id.id
  instance_type = "t2.micro"
  subnet_id = "subnet-00ad507fea4b45014"

}
