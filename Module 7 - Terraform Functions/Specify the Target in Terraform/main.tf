provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWIBQPDIZ4SHKBHWF"
  secret_key = "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"
}

resource "aws_instance" "instance-1" {
  ami = "ami-09538990a0c4fe9be"
  instance_type = "t2.micro"
  subnet_id = "subnet-00ad507fea4b45014"
  tags ={
    Name = "instance-1"
  }
}


resource "aws_instance" "instance-2" {
  ami = "ami-09538990a0c4fe9be"
  instance_type = "t2.micro"
  subnet_id = "subnet-00ad507fea4b45014"
  tags ={
    Name = "instance-2"
  }
}
