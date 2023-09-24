provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-09538990a0c4fe9be"
  instance_type = "t2.micro"
  subnet_id = "subnet-00ad507fea4b45014"
  tags ={
    Name = "tf-example"
  }
}
