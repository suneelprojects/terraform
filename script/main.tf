provider "aws" {
region = "us-east-1"
access_key = var.ACCESS_KEY
  secret_key = VAR.SECRET_KEY
resource "aws_instance" "instance-1" {
ami = "ami-04d29b6f966df1537"
instance_type = "t2.nano"
}

resource "aws_instance" "instance-2" {
ami = "ami-04d29b6f966df1537"
instance_type = "t2.micro"
}
