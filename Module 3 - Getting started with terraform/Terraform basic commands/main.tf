provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWIBQPDIZ4SHKBHWF"
  secret_key = "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"
}

resource "aws_instance" "ec2" {
  ami         = "ami-04823729c75214919"
  instance_type = "t2.medium"
  subnet_id     = "subnet-0422aa31d4c62de2c"

  tags = {
    Name = "tf-murali"
  }
}
