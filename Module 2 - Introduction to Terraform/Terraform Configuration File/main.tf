provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAUQEUJ26JLT6FZ74L"
  secret_key = "sSehFLOmXx7aqAYO6G6j7UdPVuSx8WgXuwONUrRh"
}


  resource "aws_instance" "example_ec2_instance" {
    ami = "ami-0c94855ba95c71c99"
    instance_type = "t2.micro"
    subnet_id = "subnet-0123456789abcdef0"

    tags = {
      Name = "ExampleEC2Instance"
    }
  }
