provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWIBQPDIZ4SHKBHWF"
  secret_key = "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"
}

resource "aws_instance" "ec2" {
  ami         = "ami-04823729c75214919"
  instance_type = "t2.micros"
  subnet_id     = "subnet-0b6176f6bc4d49470"

  tags = {
    Name = "tf-example"
  }
}


resource "aws_iam_user" "user" {
  name = "dev"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}
